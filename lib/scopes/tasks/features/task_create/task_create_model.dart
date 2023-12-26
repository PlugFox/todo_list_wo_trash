import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/logic/create/task_create_bloc.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Callback for create task
typedef TaskCreateCallback = void Function(TaskCreateRequest request);

/// {@template task_create_model}
/// Model with dependencies for TaskCreateWidgetModel
/// {@endtemplate}
class TaskCreateModel extends ElementaryModel {
  /// {@macro task_create_model}
  TaskCreateModel({
    required this.create,
    required this.taskCreateState,
    required this.initTaskCreate,
    super.errorHandler,
  });

  /// Create callback
  final TaskCreateCallback create;

  /// Callback for init task create
  final VoidCallback initTaskCreate;

  /// Stream with task create state
  final Stream<TaskCreateState> taskCreateState;
}
