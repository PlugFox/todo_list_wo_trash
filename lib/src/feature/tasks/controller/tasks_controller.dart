// ignore_for_file: public_member_api_docs

import 'package:domain/common/typedefs.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/repository/task_repository.dart';
import 'package:flutter/foundation.dart';

sealed class TasksState {
  TasksState._(this.tasks) : _table = {for (final task in tasks) task.id: task};

  factory TasksState.loading(List<TaskEntity> tasks) = TasksState$Loading;

  factory TasksState.idle(List<TaskEntity> tasks) = TasksState$Idle;

  factory TasksState.error(List<TaskEntity> tasks) = TasksState$Error;

  abstract final bool isLoading;
  abstract final bool isIdle;
  abstract final bool isError;
  final List<TaskEntity> tasks;
  final Map<Id, TaskEntity> _table;
  TaskEntity? getById(Id id) => _table[id];
}

class TasksState$Loading extends TasksState {
  TasksState$Loading(super.tasks) : super._();

  @override
  bool get isError => false;
  @override
  bool get isIdle => false;
  @override
  bool get isLoading => true;
}

class TasksState$Idle extends TasksState {
  TasksState$Idle(super.tasks) : super._();

  @override
  bool get isError => false;
  @override
  bool get isIdle => true;
  @override
  bool get isLoading => false;
}

class TasksState$Error extends TasksState {
  TasksState$Error(super.tasks) : super._();

  @override
  bool get isError => true;
  @override
  bool get isIdle => false;
  @override
  bool get isLoading => false;
}

class TasksController extends ValueNotifier<TasksState> {
  TasksController({
    required TaskRepository repository,
    List<TaskEntity>? tasks,
  })  : _repository = repository,
        super(TasksState.idle(tasks ?? []));

  final TaskRepository _repository;

  void create(final String title, final String description) => _handle(() async {
        final newTask = await _repository.create(title: title, description: description);
        _setState(TasksState.idle([...value.tasks, newTask]));
      });

  void fetch(TaskFilterCompletedType filter) => _handle(() async {
        final tasks = await _repository.readAll(filter);
        _setState(TasksState.idle(tasks));
      });

  void update(TaskEntity task) => _handle(() async {
        final tasks = await _repository.update(task);
        _setState(
          TasksState.idle(
            value.tasks.toList()
              ..removeWhere((t) => t.id == task.id)
              ..add(tasks),
          ),
        );
      });

  void delete(Id task) => _handle(() async {
        await _repository.delete(task);
        _setState(
          TasksState.idle(
            value.tasks.toList()..removeWhere((t) => t.id == task),
          ),
        );
      });

  void _setState(TasksState state) {
    value = state;
    notifyListeners();
  }

  Future<void> _handle(Future<void> Function() fn) async {
    _setState(TasksState.error(value.tasks));
    try {
      await fn();
    } on Object {
      _setState(TasksState.error(value.tasks));
    }
  }
}
