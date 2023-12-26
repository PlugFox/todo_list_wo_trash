import 'package:auto_route/auto_route.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/router/router.gr.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/scopes/tasks/di/wrapper.dart';
import 'package:todo_list/scopes/tasks/features/tasks_list/tasks_list_model.dart';
import 'package:todo_list/scopes/tasks/features/tasks_list/tasks_list_widget.dart';

/// Interface for TasksListWidgetModel
abstract interface class ITasksListWidgetModel implements IWidgetModel {
  /// Current locale strings
  S get strings;

  /// List of tasks
  List<TaskEntity> get tasks;

  /// Called when user taps on add button
  void onAddTap();
}

/// Default widget model factory for TasksListWidget
TasksListWidgetModel defaultTasksListWidgetModelFactory(BuildContext context) {
  final controller = TasksScope.listOf(context);
  return TasksListWidgetModel(
    TasksListModel(
      tasks: controller.tasks,
      fetch: controller.loadTasks,
    ),
  );
}

/// {@template tasks_list_widget_model}
/// WidgetModel for TasksListWidget
///
/// This class is responsible for managing the state of the widget.
/// {@endtemplate}
class TasksListWidgetModel extends WidgetModel<TasksListScreenWidget, TasksListModel> implements ITasksListWidgetModel {
  /// {@macro tasks_list_widget_model}
  TasksListWidgetModel(super.model);

  /// Current router
  StackRouter get router => AutoRouter.of(context);

  @override
  S get strings => S.of(context);

  @override
  List<TaskEntity> get tasks => model.tasks;

  @override
  void initWidgetModel() {
    if (tasks.isEmpty) {
      model.fetch();
    }
    super.initWidgetModel();
  }

  @override
  void onAddTap() {
    router.push(const TaskCreateRoute());
  }
}
