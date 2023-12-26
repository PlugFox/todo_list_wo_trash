import 'package:bloc/bloc.dart';
import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/exceptions/task_exceptions.dart';
import 'package:domain/task/repository/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_list_bloc.freezed.dart';

@freezed

/// Represents the state of the task list in the task list bloc.
class TaskListState with _$TaskListState {
  /// Represents the initial state of the task list.
  const factory TaskListState.initial() = _InitialTaskListState;

  /// Represents the loading state of the task list.
  const factory TaskListState.loading() = _LoadingTaskListState;

  /// Represents the loaded state of the task list.
  const factory TaskListState.loaded({
    /// Loaded list with tasks.
    required List<TaskEntity> tasks,
  }) = _LoadedTaskListState;

  /// Represents the error state of the task list.
  const factory TaskListState.error({
    required TaskException exception,
    List<TaskEntity>? tasks,
  }) = _ErrorTaskListState;
}

@freezed

/// Represents the event of the task list in the task list bloc.
class TaskListEvent with _$TaskListEvent {
  /// Represents the event of loading a task list.
  ///
  /// [filterRequest] is the filter type of the task.
  const factory TaskListEvent.load({
    required TaskFilterRequest filterRequest,
  }) = _LoadTaskListEvent;

  /// Represents the event of adding a task.
  const factory TaskListEvent.add({
    /// Task to add.
    required TaskEntity task,
  }) = _AddTaskListEvent;

  /// Represents the event of updating a task.
  const factory TaskListEvent.update({
    /// Updated task.
    required TaskEntity task,
  }) = _UpdateTaskListEvent;

  /// Represents the event of deleting a task.
  const factory TaskListEvent.delete({
    /// Deleted task.
    required Id taskId,
  }) = _DeleteTaskListEvent;
}

/// {@template task_list_bloc}
/// The [TaskListBloc] class is responsible for managing the state and logic
/// related to the task list. It extends the [Bloc] class and handles [TaskListEvent]
/// events to produce [TaskListState] states.
/// {@endtemplate}
class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  /// {@macro task_list_bloc}
  TaskListBloc({
    required TaskRepository taskRepository,
    TaskListState? initialState,
  })  : _taskRepository = taskRepository,
        super(initialState ?? const TaskListState.initial()) {
    on<TaskListEvent>(
      (event, emit) => event.map(
        load: (event) => _load(event, emit),
        add: (event) => _add(event, emit),
        update: (event) => _update(event, emit),
        delete: (event) => _delete(event, emit),
      ),
    );
  }

  final TaskRepository _taskRepository;

  /// Retrieves the list of tasks from the current state.
  ///
  /// Returns a list of [TaskEntity] objects representing the tasks.
  List<TaskEntity> get tasks => state.maybeWhen(
        loaded: (tasks) => tasks,
        orElse: () => [],
      );

  Future<void> _load(_LoadTaskListEvent event, Emitter<TaskListState> emit) async {
    emit(const TaskListState.loading());
    try {
      final tasks = await _taskRepository.readAll(event.filterRequest);
      emit(TaskListState.loaded(tasks: tasks));
    } on TaskException catch (e) {
      emit(TaskListState.error(exception: e));
    }
  }

  Future<void> _add(_AddTaskListEvent event, Emitter<TaskListState> emit) async {
    assert(state is _LoadedTaskListState, 'State must be loaded');
    try {
      final currentList = List<TaskEntity>.from((state as _LoadedTaskListState).tasks);
      final updatedList = currentList..add(event.task);
      emit(
        TaskListState.loaded(
          tasks: updatedList,
        ),
      );
    } on TaskException catch (e) {
      emit(TaskListState.error(exception: e));
    }
  }

  Future<void> _update(_UpdateTaskListEvent event, Emitter<TaskListState> emit) async {
    assert(state is _LoadedTaskListState, 'State must be loaded');
    try {
      final currentList = List<TaskEntity>.from((state as _LoadedTaskListState).tasks);
      final updatedList = currentList.map((task) {
        if (task.id == event.task.id) {
          return event.task;
        } else {
          return task;
        }
      }).toList();
      emit(
        TaskListState.loaded(tasks: updatedList),
      );
    } on TaskException catch (e) {
      emit(TaskListState.error(exception: e));
    }
  }

  Future<void> _delete(_DeleteTaskListEvent event, Emitter<TaskListState> emit) async {
    assert(state is _LoadedTaskListState, 'State must be loaded');
    try {
      final tasks = (state as _LoadedTaskListState).tasks;
      final updatedTasks = tasks.where((task) => task.id != event.taskId).toList();

      emit(TaskListState.loaded(tasks: updatedTasks));
    } on TaskException catch (e) {
      emit(TaskListState.error(exception: e));
    }
  }
}
