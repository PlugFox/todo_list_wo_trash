import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/scopes/tasks/features/tasks_list/tasks_list_wm.dart';
import 'package:todo_list/scopes/tasks/features/tasks_list/widgets/tasks_list.dart';

@RoutePage()

/// {@template tasks_list_widget}
/// Widget configuration for TasksListWidgetModel
/// {@endtemplate}
class TasksListScreenWidget extends ElementaryWidget<ITasksListWidgetModel> {
  /// {@macro tasks_list_widget}
  const TasksListScreenWidget({
    Key? key,
  }) : super(defaultTasksListWidgetModelFactory, key: key);

  @override
  Widget build(ITasksListWidgetModel wm) => Scaffold(
        appBar: AppBar(
          title: Text(wm.strings.tasks),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: wm.strings.createTask,
          onPressed: wm.onAddTap,
          child: const Icon(Icons.add),
        ),
        body: TasksListWidget(
          tasks: wm.tasks,
        ),
      );
}
