import 'package:auto_route/auto_route.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/src/common/widget/dependencies.dart';
import 'package:todo_list/src/feature/tasks/controller/tasks_controller.dart';
import 'package:todo_list/src/feature/tasks/widget/tasks_scope.dart';

/// {@template create_task_screen}
/// CreateTaskScreen widget.
/// {@endtemplate}
@RoutePage()
class CreateTaskScreen extends StatefulWidget {
  /// {@macro create_task_screen}
  const CreateTaskScreen({
    super.key, // ignore: unused_element
  });

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  late final TasksController tasksController;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tasksController = Dependencies.of(context).tasksController;
    tasksController.addListener(_onStateChanged);
  }

  @override
  void dispose() {
    tasksController.removeListener(_onStateChanged);
    super.dispose();
  }

  void _onStateChanged() {
    if (!mounted) return;
    if (tasksController.value.isIdle) AutoRouter.of(context).pop();
  }

  void _showErrorSnackbar() {
    if (!mounted) return;
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(content: Text(S.of(context).fillAllFields)),
    );
  }

  bool _validate() => _titleController.text.isNotEmpty && _descriptionController.text.isNotEmpty;

  void _onAddTap() {
    if (!_validate()) return _showErrorSnackbar();
    tasksController.create(_titleController.text, _descriptionController.text);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).createTask),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            final isLoading = TasksScope.getState(context).isLoading;
            return FloatingActionButton.extended(
              tooltip: S.of(context).createTask,
              onPressed: isLoading ? null : _onAddTap,
              icon: const Icon(Icons.add),
              label: isLoading ? const CircularProgressIndicator.adaptive() : Text(S.of(context).createTask),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: '${S.of(context).title}*',
                ),
                maxLength: TaskEntity.titleMaxLength,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: '${S.of(context).description}*',
                ),
              ),
            ],
          ),
        ),
      );
}
