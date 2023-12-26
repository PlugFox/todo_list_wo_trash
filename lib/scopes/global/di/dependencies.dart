part of 'wrapper.dart';

/// {@template global_scope_dependencies}
/// Represents the base class for global scope dependencies.
/// This class serves as a blueprint for defining dependencies that are required at the global scope.
/// {@endtemplate}
class GlobalScopeDependencies {
  /// Router for application
  late final AppRouter router;

  /// Custom theme extension for components in the application
  late final ComponentsTheme componentsTheme;
}
