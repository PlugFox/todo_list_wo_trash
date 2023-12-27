import 'package:domain/common/typedefs.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/src/common/widget/dependencies.dart';
import 'package:todo_list/src/feature/tasks/controller/tasks_controller.dart';

/// {@template tasks_scope}
/// TasksScope widget.
/// {@endtemplate}
class TasksScope extends StatelessWidget {
  /// {@macro tasks_scope}
  const TasksScope({
    required this.child,
    super.key, // ignore: unused_element
  });

  /// Get state from the closest instance of this class.
  static TasksState getState(BuildContext context) => _InheritedTasks.of(context, listen: false).state;

  /// Get tasks.
  static List<TaskEntity> getTasks(BuildContext context, {bool listen = true}) =>
      _InheritedTasks.of(context, listen: listen).state.tasks;

  /// Get task by id.
  static TaskEntity? getTaskById(BuildContext context, Id id, {bool listen = true}) =>
      _InheritedTasks.getById(context, id, listen: listen);

  /// The widget below this widget in the tree.
  final Widget child;

  /* #endregion */
  @override
  Widget build(BuildContext context) => ValueListenableBuilder<TasksState>(
        valueListenable: Dependencies.of(context).tasksController,
        builder: (context, state, _) => _InheritedTasks(
          state: state,
          child: child,
        ),
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedTasks extends InheritedModel<Id> {
  const _InheritedTasks({
    required this.state,
    required super.child,
  });

  final TasksState state;

  static _InheritedTasks of(BuildContext context, {bool listen = true}) => listen
      ? context.dependOnInheritedWidgetOfExactType<_InheritedTasks>()!
      : context.getInheritedWidgetOfExactType<_InheritedTasks>()!;

  /// Get task by id.
  static TaskEntity? getById(BuildContext context, Id id, {bool listen = true}) =>
      (listen ? InheritedModel.inheritFrom<_InheritedTasks>(context, aspect: id) : of(context, listen: false))
          ?.state
          .getById(id);

  @override
  bool updateShouldNotify(covariant _InheritedTasks oldWidget) =>
      state.isIdle != oldWidget.state.isIdle ||
      state.isError != oldWidget.state.isError ||
      state.isLoading != oldWidget.state.isLoading ||
      !listEquals(state.tasks, oldWidget.state.tasks);

  @override
  bool updateShouldNotifyDependent(covariant _InheritedTasks oldWidget, Set<Id> aspects) {
    for (final id in aspects) {
      if (state.getById(id) != oldWidget.state.getById(id)) return true;
    }
    return false;
  }
}
