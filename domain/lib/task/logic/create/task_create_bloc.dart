import 'package:bloc/bloc.dart';
import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/exceptions/task_exceptions.dart';
import 'package:domain/task/repository/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_create_bloc.freezed.dart';

@freezed

/// Represents the state of the task create feature.
class TaskCreateState with _$TaskCreateState {
  /// Represents the idle state of the task create feature.
  factory TaskCreateState.idle() = _IdleTaskCreateState;

  /// Represents the loading state of the task create feature.
  factory TaskCreateState.loading() = _LoadingTaskCreateState;

  /// Represents the success state of the task create feature.
  factory TaskCreateState.success({
    /// Created task.
    required TaskEntity task,
  }) = _SuccessTaskCreateState;

  /// Represents the error state of the task create feature.
  factory TaskCreateState.error({
    required TaskException error,
  }) = _ErrorTaskCreateState;
  TaskCreateState._();

  /// Represents the idle state of the task create feature.
  bool get isBusy => this is _LoadingTaskCreateState;

  /// Represents the success state of the task create feature.
  bool get isCreated => this is _SuccessTaskCreateState;

  /// Task which was created.
  TaskEntity? get task => whenOrNull(
        success: (task) => task,
      );
}

@freezed

/// Represents the event of the task create feature.
class TaskCreateEvent with _$TaskCreateEvent {
  /// Represents the event of creating a task.
  factory TaskCreateEvent.create({
    /// Task title.
    required TaskCreateRequest request,
  }) = _CreateTaskCreateEvent;

  /// Initialize create session.
  factory TaskCreateEvent.init() = _InitTaskCreateEvent;
}

/// {@template task_create_bloc}
/// The [TaskCreateBloc] class is responsible for managing the state and logic
/// related to creating tasks. It extends the [Bloc] class and handles [TaskCreateEvent]
/// events to produce [TaskCreateState] states.
///
/// This bloc is used in the task creation process to handle user interactions
/// and perform necessary business logic.
/// {@endtemplate}
class TaskCreateBloc extends Bloc<TaskCreateEvent, TaskCreateState> {
  /// {@macro task_create_bloc}
  TaskCreateBloc({
    required TaskRepository taskRepository,
    TaskCreateState? initialState,
  })  : _taskRepository = taskRepository,
        super(initialState ?? TaskCreateState.idle()) {
    on<TaskCreateEvent>(
      (event, emit) => event.map(
        create: (event) => _create(event, emit),
        init: (event) => _init(event, emit),
      ),
    );
  }

  /// Returns a boolean value indicating whether the state is currently in the process of loading a task creation.
  bool get isBusy => state is _LoadingTaskCreateState;

  /// Returns a boolean value indicating that the task has been created.
  bool get isCreated => state is _SuccessTaskCreateState;

  final TaskRepository _taskRepository;

  void _init(
    _InitTaskCreateEvent event,
    Emitter<TaskCreateState> emit,
  ) {
    emit(TaskCreateState.idle());
  }

  Future<void> _create(
    _CreateTaskCreateEvent event,
    Emitter<TaskCreateState> emit,
  ) async {
    emit(TaskCreateState.loading());

    try {
      final task = await _taskRepository.create(event.request);
      emit(TaskCreateState.success(task: task));
    } on Object catch (e, stackTrace) {
      emit(
        TaskCreateState.error(
          error: TaskCreateException(
            message: e.toString(),
            stackTrace: stackTrace,
          ),
        ),
      );
    }
  }
}
