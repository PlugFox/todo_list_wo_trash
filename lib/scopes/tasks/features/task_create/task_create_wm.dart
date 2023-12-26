import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:domain/task/dto/task_create_request.dart';
import 'package:domain/task/logic/create/task_create_bloc.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/scopes/tasks/di/wrapper.dart';
import 'package:todo_list/scopes/tasks/features/task_create/task_create_model.dart';
import 'package:todo_list/scopes/tasks/features/task_create/task_create_widget.dart';

/// Interface for TaskCreateWidgetModel
abstract interface class ITaskCreateWidgetModel implements IWidgetModel {
  /// Current locale strings
  S get strings;

  /// Controller that holds the title state of the task
  TextEditingController get titleController;

  /// Controller that holds the description state of the task
  TextEditingController get descriptionController;

  /// Indicates whether the widget is in loading state
  StateNotifier<bool> get isLoading;

  /// Called when user taps on add button
  void onAddTap();
}

/// Default widget model factory for TaskCreateWidget
TaskCreateWidgetModel defaultTaskCreateWidgetModelFactory(BuildContext context) {
  final controller = TasksScope.createOf(context);
  return TaskCreateWidgetModel(
    TaskCreateModel(
      initTaskCreate: controller.initTaskCreate,
      create: controller.createTask,
      taskCreateState: controller.taskCreateState,
    ),
  );
}

/// {@template task_create_widget_model}
/// WidgetModel for TaskCreateWidget
///
/// This class is responsible for managing the state of the widget.
/// {@endtemplate}
class TaskCreateWidgetModel extends WidgetModel<TaskCreateScreenWidget, TaskCreateModel>
    implements ITaskCreateWidgetModel {
  /// {@macro task_create_widget_model}
  TaskCreateWidgetModel(super.model);

  StackRouter get _router => AutoRouter.of(context);

  @override
  S get strings => S.of(context);

  @override
  TextEditingController get descriptionController => _titleController;

  @override
  TextEditingController get titleController => _descriptionController;

  @override
  StateNotifier<bool> get isLoading => _isLoading;

  final _isLoading = StateNotifier(initValue: false);

  final _titleController = TextEditingController();

  final _descriptionController = TextEditingController();

  late final StreamSubscription<TaskCreateState> _taskCreateStateSubscription;

  @override
  void onAddTap() {
    if (!_validate()) {
      return _showErrorSnackbar();
    }
    model.create(
      TaskCreateRequest(
        title: titleController.text,
        description: descriptionController.text,
      ),
    );
  }

  @override
  void initWidgetModel() {
    model.initTaskCreate();
    _taskCreateStateSubscription = model.taskCreateState.listen(_listenForChanges);
    super.initWidgetModel();
  }

  void _listenForChanges(TaskCreateState state) {
    if (state.isCreated) {
      _router.pop();
    } else {
      _isLoading.accept(state.isBusy);
    }
  }

  @override
  void dispose() {
    _taskCreateStateSubscription.cancel();
    super.dispose();
  }

  void _showErrorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(strings.fillAllFields),
      ),
    );
  }

  bool _validate() {
    final title = titleController.text;
    final description = descriptionController.text;
    return title.isNotEmpty && description.isNotEmpty;
  }
}
