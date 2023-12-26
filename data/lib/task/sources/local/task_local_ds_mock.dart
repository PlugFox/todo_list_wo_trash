import 'package:data/task/models/task_model.dart';
import 'package:data/task/sources/local/task_local_ds.dart';
import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';

/// A mock implementation of the local data source for tasks.
/// This class is used for testing purposes and provides a mock implementation of the TaskLocalDS interface.
class TaskLocalDSMock implements TaskLocalDS {
  final _inMemoryList = <TaskEntity>[];

  @override
  Future<TaskEntity> create(TaskCreateRequest request) {
    final task = TaskDataModel.fromRequest(request);
    _inMemoryList.add(task.entity);
    return Future.value(task.entity);
  }

  @override
  Future<void> delete(Id taskId) async {
    _inMemoryList.removeWhere((task) => task.id == taskId);
  }

  @override
  Future<List<TaskEntity>> readAll(TaskFilterRequest request) async {
    if (request.completedType == TaskFilterCompletedType.all) {
      return _inMemoryList;
    } else {
      return _inMemoryList.where((task) {
        if (request.completedType == TaskFilterCompletedType.completed) {
          return task.isCompleted;
        } else {
          return !task.isCompleted;
        }
      }).toList();
    }
  }

  @override
  Future<TaskEntity> update(TaskEntity task) {
    final indexToUpdate = _inMemoryList.indexWhere((element) => element.id == task.id);
    _inMemoryList[indexToUpdate] = task;
    return Future.value(task);
  }
}
