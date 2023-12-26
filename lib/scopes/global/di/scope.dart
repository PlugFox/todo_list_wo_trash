part of 'wrapper.dart';

class _GlobalScope extends InheritedWidget {
  const _GlobalScope({
    required super.child,
    required this.dependencies,
  });

  final GlobalScopeDependencies dependencies;

  @override
  bool updateShouldNotify(_GlobalScope oldWidget) => false;
}
