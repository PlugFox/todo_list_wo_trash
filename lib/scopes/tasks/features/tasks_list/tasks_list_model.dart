import 'package:domain/task/entities/task_entity.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// {@template tasks_list_model}
/// Model with dependencies for TasksListWidgetModel
/// {@endtemplate}
class TasksListModel extends ElementaryModel {
  /// {@macro tasks_list_model}
  TasksListModel({
    required this.tasks,
    required this.fetch,
    super.errorHandler,
  });

  /// Tasks list to display
  final List<TaskEntity> tasks;

  /// Refresh tasks list
  final VoidCallback fetch;
}
