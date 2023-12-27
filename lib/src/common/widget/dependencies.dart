import 'package:flutter/material.dart';
import 'package:todo_list/src/feature/tasks/controller/tasks_controller.dart';

/// {@template dependencies}
/// Dependencies widget.
/// {@endtemplate}
class Dependencies extends InheritedWidget {
  /// {@macro dependencies}
  const Dependencies.wrap({
    required super.child,
    required this.tasksController,
    super.key, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// e.g. `Dependencies.of(context)`
  static Dependencies of(BuildContext context) => context.getInheritedWidgetOfExactType<Dependencies>()!;

  /// Tasks controller.
  final TasksController tasksController;

  @override
  bool updateShouldNotify(Dependencies oldWidget) => false;
}
