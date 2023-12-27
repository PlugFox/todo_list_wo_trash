import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:todo_list/scopes/global/features/splash/splash_widget.dart';
import 'package:todo_list/src/common/router/router.dart';
import 'package:todo_list/src/common/theme/components_theme.dart';

part 'dependencies.dart';
part 'scope.dart';

/// {@template global_scope}
/// A wrapper widget that provides a global scope for the application.
/// {@endtemplate}
class GlobalScope extends StatefulWidget {
  /// {@macro global_scope}
  const GlobalScope({required this.child, super.key});

  /// The child widget.
  ///
  /// Usually App widget.
  final WidgetBuilder child;

  @override
  State<GlobalScope> createState() => _GlobalScopeState();

  /// Returns the [GlobalScopeDependencies] associated with the given [BuildContext].
  static GlobalScopeDependencies of(BuildContext context) {
    final _GlobalScope? scope = context.dependOnInheritedWidgetOfExactType<_GlobalScope>();
    assert(scope != null, 'No GlobalScope found in context');
    return scope!.dependencies;
  }
}

class _GlobalScopeState extends State<GlobalScope> implements GlobalScopeDependencies {
  WidgetBuilder get child => widget.child;
  bool _isInitialized = false;

  void _setInitialized() {
    setState(() {
      _isInitialized = true;
    });
  }

  /// TODO(@MysticalNobody): Add percentage loader
  Future<void> _init() async {
    router = AppRouter();

    final brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;

    /// TODO(@MysticalNobody): Handle dynamic theme changes
    componentsTheme = brightness == Brightness.light ? ComponentsThemeLight() : ComponentsThemeDark();
    _setInitialized();
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => _isInitialized
      ? _GlobalScope(
          dependencies: this,
          child: Builder(builder: child),
        )
      : const SplashWidget();

  @override
  late ComponentsTheme componentsTheme;

  @override
  late AppRouter router;
}
