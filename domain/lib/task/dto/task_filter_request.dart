/// Completion status of the task.
enum TaskFilterCompletedType {
  /// All tasks.
  all,

  /// Only completed tasks.
  completed,

  /// Only incomplete tasks.
  incomplete
}

/// {@template task_filter_request}
/// [TaskFilterRequest] is a class that contains the filter type of the task.
/// {@endtemplate}
class TaskFilterRequest {
  /// {@macro task_filter_request}
  const TaskFilterRequest({
    this.completedType = TaskFilterCompletedType.all,
  });

  /// Completion status of the task.
  final TaskFilterCompletedType completedType;
}
