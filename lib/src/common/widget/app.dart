import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:data/task/repository/task_repository.dart';
import 'package:data/task/sources/local/task_local_ds_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/scopes/global/di/wrapper.dart';
import 'package:todo_list/src/common/widget/dependencies.dart';
import 'package:todo_list/src/feature/tasks/controller/tasks_controller.dart';
import 'package:todo_list/src/feature/tasks/widget/tasks_scope.dart';

/// {@template app}
/// App
///
/// A widget is responsible for initializing the application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  @override
  Widget build(BuildContext context) => GlobalScope(
        child: (context) => _App(
          dependencies: GlobalScope.of(context),
        ),
      );
}

class _App extends StatefulWidget {
  const _App({required this.dependencies});

  final GlobalScopeDependencies dependencies;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  final bool _shouldUseAccessibilityTools = true;
  GlobalScopeDependencies get dependencies => widget.dependencies;

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
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: dependencies.router.config(),
        theme: ThemeData.light().copyWith(
          inputDecorationTheme: dependencies.componentsTheme.inputDecorationTheme,
          colorScheme: const ColorScheme.light(),
        ),
        darkTheme: ThemeData.dark().copyWith(
          inputDecorationTheme: dependencies.componentsTheme.inputDecorationTheme,
          colorScheme: const ColorScheme.dark(),
        ),
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        builder: (context, child) {
          final accessibilityTools = _shouldUseAccessibilityTools ? AccessibilityTools(child: child) : child!;
          return Dependencies.wrap(
            tasksController: _tasksController,
            child: TasksScope(
              child: accessibilityTools,
            ),
          );
        },
      );
}
