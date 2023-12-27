import 'package:data/task/sources/local/task_local_ds.dart';
import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/repository/task_repository.dart';

/// {@template task_repository_impl}
/// Implementation of the [TaskRepository] interface.
/// {@endtemplate}
class TaskRepositoryImpl implements TaskRepository {
  /// {@macro task_repository_impl}
  TaskRepositoryImpl({
    required TaskLocalDS localDS,
  }) : _localDS = localDS;

  final TaskLocalDS _localDS;
  @override
  Future<TaskEntity> create({required String title, required String description}) =>
      _localDS.create(title: title, description: description);

  @override
  Future<void> delete(Id task) => _localDS.delete(task);

  @override
  Future<List<TaskEntity>> readAll(TaskFilterCompletedType filter) => _localDS.readAll(filter);

  @override
  Future<TaskEntity> update(TaskEntity task) => _localDS.update(task);
}
