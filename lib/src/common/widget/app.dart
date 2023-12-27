import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:data/task/repository/task_repository.dart';
import 'package:data/task/sources/local/task_local_ds_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/src/common/widget/dependencies.dart';
import 'package:todo_list/src/feature/tasks/controller/tasks_controller.dart';
import 'package:todo_list/src/feature/tasks/widget/tasks_scope.dart';
import 'package:todo_list/src/feature/tasks/widget/tasks_screen.dart';

/// {@template app}
/// App
///
/// A widget is responsible for initializing the application.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro app}
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final TasksController _tasksController;

  @override
  void initState() {
    super.initState();
    _tasksController = TasksController(
      repository: TaskRepositoryImpl(
        localDS: TaskLocalDSMock(),
      ),
    );
  }

  @override
  void dispose() {
    _tasksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        home: const TasksScreen(),
        builder: (context, child) => Dependencies.wrap(
          tasksController: _tasksController,
          child: TasksScope(
            child: AccessibilityTools(
              child: child,
            ),
          ),
        ),
      );
}
