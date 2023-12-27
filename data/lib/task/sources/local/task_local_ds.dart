import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';

/// Interface for the local data source of tasks.
abstract interface class TaskLocalDS {
  /// Reads all tasks based on the provided filter request.
  Future<List<TaskEntity>> readAll(TaskFilterCompletedType filter);

  /// Creates a new task based on the provided create request.
  Future<TaskEntity> create({required String title, required String description});

  /// Updates an existing task with the provided task data.
  Future<TaskEntity> update(TaskEntity task);

  /// Deletes a task with the specified taskId.
  Future<void> delete(Id taskId);
}
