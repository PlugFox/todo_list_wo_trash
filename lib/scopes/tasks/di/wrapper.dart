import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:data/task/repository/task_repository.dart';
import 'package:data/task/sources/local/task_local_ds.dart';
import 'package:data/task/sources/local/task_local_ds_mock.dart';
import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/dto/task_filter_request.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:domain/task/logic/create/task_create_bloc.dart';
import 'package:domain/task/logic/list/task_list_bloc.dart';
import 'package:domain/task/repository/task_repository.dart';
import 'package:flutter/material.dart';

part 'scope.dart';

@RoutePage()

/// {@template global_scope}
/// A wrapper widget that provides a tasks scope for the application.
/// {@endtemplate}
class TasksScope extends StatefulWidget {
  /// {@macro tasks_scope}
  const TasksScope({super.key});

  /// Returns the [TasksController] associated with the given [BuildContext].
  static TasksController of(BuildContext context) {
    final _TasksScope? scope = context.dependOnInheritedWidgetOfExactType<_TasksScope>();
    assert(scope != null, 'No TasksScope found in context');
    return scope!.controller;
  }

  /// Returns the [TaskCreateController] associated with the given [BuildContext].
  static TaskCreateController createOf(BuildContext context) {
    final _TasksScope? scope =
        context.dependOnInheritedWidgetOfExactType<_TasksScope>(aspect: _TasksScopeAspect.create);
    assert(scope != null, 'No TasksScope found in context');
    return scope!.controller;
  }

  /// Returns the [TaskListController] associated with the given [BuildContext].
  static TaskListController listOf(BuildContext context) {
    final _TasksScope? scope = context.dependOnInheritedWidgetOfExactType<_TasksScope>(aspect: _TasksScopeAspect.list);
    assert(scope != null, 'No TasksScope found in context');
    return scope!.controller;
  }

  @override
  State<TasksScope> createState() => _TasksScopeState();
}

class _TasksScopeState extends State<TasksScope> implements TasksController {
  late final TaskCreateBloc taskCreateBloc;
  late final TaskListBloc taskListBloc;

  late final StreamSubscription<TaskCreateState> _taskCreateSubscription;
  late final StreamSubscription<TaskListState> _taskListSubscription;

  @override
  void createTask(TaskCreateRequest request) {
    taskCreateBloc.add(TaskCreateEvent.create(request: request));
  }

  @override
  bool get isBusy => taskCreateBloc.isBusy;

  @override
  void loadTasks() {
    taskListBloc.add(const TaskListEvent.load(filterRequest: TaskFilterRequest()));
  }

  @override
  List<TaskEntity> get tasks => taskListBloc.tasks;

  @override
  void initState() {
    final TaskLocalDS localDS = TaskLocalDSMock();
    final TaskRepository repository = TaskRepositoryImpl(localDS: localDS);
    taskCreateBloc = TaskCreateBloc(taskRepository: repository);
    taskListBloc = TaskListBloc(taskRepository: repository, initialState: const TaskListState.initial())
      ..add(
        const TaskListEvent.load(
          filterRequest: TaskFilterRequest(),
        ),
      );
    setupListeners();
    super.initState();
  }

  @override
  void dispose() {
    _taskCreateSubscription.cancel();
    _taskListSubscription.cancel();
    super.dispose();
  }

  void setupListeners() {
    _taskCreateSubscription = taskCreateBloc.stream.asBroadcastStream().listen(_taskCreateBlocListener);
    _taskListSubscription = taskListBloc.stream.listen(_listTasksBlocListener);
  }

  void _taskCreateBlocListener(TaskCreateState state) {
    if (state.isCreated) {
      taskListBloc.add(
        TaskListEvent.add(
          task: state.task!,
        ),
      );
    }
  }

  void _listTasksBlocListener(TaskListState state) => setState(() {});

  @override
  Widget build(BuildContext context) => _TasksScope(
        controller: this,
        taskCreateState: taskCreateBloc.state,
        taskListState: taskListBloc.state,
        child: const AutoRouter(),
      );

  @override
  Stream<TaskCreateState> get taskCreateState => taskCreateBloc.stream;

  @override
  void initTaskCreate() => taskCreateBloc.add(TaskCreateEvent.init());
}
