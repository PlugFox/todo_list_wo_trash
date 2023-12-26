import 'package:domain/common/common.dart';
import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';

/// Interface for the local data source of tasks.
abstract interface class TaskLocalDS {
  /// Reads all tasks based on the provided filter request.
  Future<List<TaskEntity>> readAll(TaskFilterRequest request);

  /// Creates a new task based on the provided create request.
  Future<TaskEntity> create(TaskCreateRequest request);

  /// Updates an existing task with the provided task data.
  Future<TaskEntity> update(TaskEntity task);

  /// Deletes a task with the specified taskId.
  Future<void> delete(Id taskId);
}
