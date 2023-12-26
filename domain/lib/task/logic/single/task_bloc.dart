import 'package:bloc/bloc.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/exceptions/task_exceptions.dart';
import 'package:domain/task/repository/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_bloc.freezed.dart';

@freezed

/// Represents the state of the task feature.
///
/// This class is used to represent the state of the single task.
class TaskState with _$TaskState {
  /// Represents the idle state of the task feature.
  factory TaskState.idle({required TaskEntity task}) = _IdleTaskState;

  /// Represents the loading state of the task feature.
  factory TaskState.updating({
    required TaskEntity task,
  }) = _LoadingTaskState;

  /// Represents the error state of the task feature.
  factory TaskState.error({
    required TaskException error,
    required TaskEntity task,
  }) = _ErrorTaskState;
}

@freezed

/// Represents the event of the task feature.
///
/// This class is used to represent the actions of the single task.
class TaskEvent with _$TaskEvent {
  /// Represents the event of updating a task.
  factory TaskEvent.update({
    /// Updated task.
    required TaskEntity task,
  }) = _UpdateTaskEvent;
}

/// {@template task_bloc}
/// The [TaskBloc] class is responsible for managing the state and logic
/// related to a single task. It extends the [Bloc] class and handles [TaskEvent]
/// events to produce [TaskState] states.
/// {@endtemplate}
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  /// {@macro task_bloc}
  TaskBloc({required TaskRepository taskRepository, required TaskState initialState})
      : _taskRepository = taskRepository,
        super(initialState) {
    on<TaskEvent>(
      (event, emit) => event.map(
        update: (event) => _update(event, emit),
      ),
    );
  }

  final TaskRepository _taskRepository;

  Future<void> _update(_UpdateTaskEvent event, Emitter<TaskState> emit) async {
    emit(TaskState.updating(task: event.task));
    try {
      final updatedTask = await _taskRepository.update(event.task);
      emit(TaskState.idle(task: updatedTask));
    } on TaskUpdateException catch (e) {
      emit(TaskState.error(error: e, task: event.task));
    }
  }
}
