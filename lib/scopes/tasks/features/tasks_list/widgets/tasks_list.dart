import 'package:domain/task/entities/task_entity.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/generated/l10n/l10n.dart';

/// {@template tasks_list_widget}
/// Widget for displaying a list of tasks
/// {@endtemplate}
class TasksListWidget extends StatelessWidget {
  /// {@macro tasks_list_widget}
  const TasksListWidget({this.tasks = const [], super.key});

  /// Tasks to display
  final List<TaskEntity> tasks;

  @override
  Widget build(BuildContext context) => Semantics(
        label: S.of(context).tasksList,
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return ListTile(
              title: Text(task.title),
              subtitle: Text(task.description),
            );
          },
        ),
      );
}
