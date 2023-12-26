/// {@template task_create_request}
/// Represents a request to create a new task.
/// This class encapsulates the necessary data for creating a task.
/// {@endtemplate}
class TaskCreateRequest {
  /// {@macro task_create_request}
  TaskCreateRequest({required this.title, required this.description});

  /// The title of the task.
  final String title;

  /// The description of the task.
  final String description;
}
