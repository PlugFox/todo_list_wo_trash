import 'package:flutter/material.dart';

/// {@template components_theme}
/// A class that defines the theme for components in the application.
/// {@endtemplate}
abstract interface class ComponentsTheme {
  /// The theme for input components.
  ///
  /// For example, [TextField], [TextFormField], [InputDecorator], etc.
  /// See also: [InputDecorationTheme](https://api.flutter.dev/flutter/material/InputDecorationTheme-class.html)
  late final InputDecorationTheme inputDecorationTheme;
}

/// {@macro components_theme}
class ComponentsThemeDark implements ComponentsTheme {
  @override
  InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
  );
}

/// {@macro components_theme}
class ComponentsThemeLight implements ComponentsTheme {
  @override
  InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
  );
}
