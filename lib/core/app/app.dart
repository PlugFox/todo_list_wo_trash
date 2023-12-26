import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_list/generated/l10n/l10n.dart';
import 'package:todo_list/scopes/global/di/wrapper.dart';

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

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        builder: (context, child) => _shouldUseAccessibilityTools ? AccessibilityTools(child: child) : child!,
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
      );
}
