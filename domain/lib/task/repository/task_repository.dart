import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';

/// Represents a repository for managing tasks.
///
/// This interface provides methods for interacting with a task repository,
/// such as creating, updating, and deleting tasks.
abstract interface class TaskRepository {
  /// Gets all tasks.
  /// Returns a [List] of [TaskEntity] representing the tasks.
  /// Throws an `TaskReadException` if the read operation fails.
  Future<List<TaskEntity>> readAll(TaskFilterCompletedType filter);

  /// Creates a new task.
  /// Returns a [TaskEntity] representing the created task.
  /// Throws an `TaskCreateException` if the creation fails.
  Future<TaskEntity> create({required String title, required String description});

  /// Updates the given [task] in the task repository.
  ///
  /// Returns a [Future] that completes with the updated [TaskEntity].
  /// Throws an `TaskUpdateException` if the update operation fails.
  Future<TaskEntity> update(TaskEntity task);

  /// Deletes the given [task] from the task repository.
  ///
  /// Returns a [Future] that completes with void.
  /// Throws an `TaskDeleteException` if the delete operation fails.
  Future<void> delete(Id task);
}
