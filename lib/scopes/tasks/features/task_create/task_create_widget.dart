import 'package:auto_route/auto_route.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/scopes/tasks/features/task_create/task_create_wm.dart';

@RoutePage()

/// {@template task_create_widget}
/// Widget configuration for TaskCreateWidgetModel
/// {@endtemplate}
class TaskCreateScreenWidget extends ElementaryWidget<ITaskCreateWidgetModel> {
  /// {@macro task_create_widget}
  const TaskCreateScreenWidget({
    Key? key,
  }) : super(defaultTaskCreateWidgetModelFactory, key: key);

  @override
  Widget build(ITaskCreateWidgetModel wm) => Scaffold(
        appBar: AppBar(
          title: Text(wm.strings.createTask),
        ),
        floatingActionButton: StateNotifierBuilder(
          listenableState: wm.isLoading,
          builder: (context, isLoadingState) {
            final isLoading = isLoadingState ?? false;
            return FloatingActionButton.extended(
              tooltip: wm.strings.createTask,
              onPressed: isLoading ? null : wm.onAddTap,
              icon: const Icon(Icons.add),
              label: isLoading ? const CircularProgressIndicator.adaptive() : Text(wm.strings.createTask),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: wm.titleController,
                decoration: InputDecoration(
                  labelText: '${wm.strings.title}*',
                ),
                maxLength: TaskEntity.titleMaxLength,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: wm.descriptionController,
                decoration: InputDecoration(
                  labelText: '${wm.strings.description}*',
                ),
              ),
            ],
          ),
        ),
      );
}
