part of 'wrapper.dart';

enum _TasksScopeAspect { create, list }

/// Task create controller.
abstract interface class TaskCreateController {
  /// Initializes the task creation.
  void initTaskCreate();

  /// Creates a new task.
  void createTask(TaskCreateRequest request);

  /// Is the task creation in progress.
  bool get isBusy;

  Stream<TaskCreateState> get taskCreateState;
}

/// Task list controller.
abstract interface class TaskListController {
  /// Loads the tasks.
  void loadTasks();

  /// The state of the task list.
  List<TaskEntity> get tasks;
}

/// A scope for managing tasks.
///
/// This abstract class represents a scope that combines the functionality of both [TaskCreateController] and [TaskListController].
/// It provides methods and properties for creating tasks and managing the task list.
abstract class TasksController implements TaskCreateController, TaskListController {}

class _TasksScope extends InheritedModel<_TasksScopeAspect> {
  const _TasksScope({
    required super.child,
    required this.controller,
    required this.taskCreateState,
    required this.taskListState,
  });

  final TasksController controller;
  final TaskCreateState taskCreateState;
  final TaskListState taskListState;

  @override
  bool updateShouldNotify(covariant _TasksScope oldWidget) =>
      taskCreateState != oldWidget.taskCreateState || taskListState != oldWidget.taskListState;

  @override
  bool updateShouldNotifyDependent(covariant _TasksScope oldWidget, Set<_TasksScopeAspect> dependencies) {
    var shouldNotify = false;

    if (dependencies.contains(_TasksScopeAspect.create)) {
      shouldNotify = shouldNotify || taskCreateState != oldWidget.taskCreateState;
    }

    if (dependencies.contains(_TasksScopeAspect.list)) {
      shouldNotify = shouldNotify || taskListState != oldWidget.taskListState;
    }

    return shouldNotify;
  }
}
