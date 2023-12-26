import 'package:domain/common/typedefs.dart';

/// {@template task_entity}
/// Represents a task entity.
///
/// This class defines the structure and behavior of a task entity in the todo list domain.
/// It encapsulates the properties related to a task, such as its title, description, and completion status.
/// {@endtemplate}
class TaskEntity {
  /// {@macro task_entity}
  TaskEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    this.isCompleted = false,
  });

  /// Identifies the task.
  final Id id;

  /// The title of the task.
  final String title;

  /// The description of the task.
  final String description;

  /// Indicates whether the task is completed.
  final bool isCompleted;

  /// The date and time the task was created.
  final DateTime createdAt;

  /// The maximum length of the title in characters.
  static int get titleMaxLength => 200;

  @override
  String toString() =>
      'TaskEntity(id: $id, title: $title, description: $description, isCompleted: $isCompleted, createdAt: $createdAt,)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskEntity &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.isCompleted == isCompleted &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ description.hashCode ^ isCompleted.hashCode ^ createdAt.hashCode;
}
