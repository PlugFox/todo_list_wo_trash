import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/src/common/router/router.gr.dart';
import 'package:todo_list/src/feature/tasks/widget/tasks_scope.dart';

/// {@template tasks_screen}
/// TasksScreen widget.
/// {@endtemplate}
@RoutePage()
class TasksScreen extends StatelessWidget {
  /// {@macro tasks_screen}
  const TasksScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).tasks),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: S.of(context).createTask,
          onPressed: () => AutoRouter.of(context).push(const CreateTaskScreen()),
          child: const Icon(Icons.add),
        ),
        body: const _TaskListView(),
      );
}

class _TaskListView extends StatelessWidget {
  const _TaskListView({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    final tasks = TasksScope.getTasks(context);
    return Semantics(
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
}
