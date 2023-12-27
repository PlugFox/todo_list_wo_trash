import 'package:flutter/material.dart';

/// {@template splash_widget}
/// A widget that represents the splash screen of the application.
/// {@endtemplate}
class SplashWidget extends StatelessWidget {
  /// {@macro splash_widget}
  const SplashWidget({this.loadingProgress, super.key});

  /// The loading progress of the application.
  final double? loadingProgress;

  @override
  Widget build(BuildContext context) {
    final child = loadingProgress != null
        ? _SplashLoaderWithProgress(loadingProgress: loadingProgress!)
        : const _SplashLoaderWithoutProgress();

    return Material(
      child: child,
    );
  }
}

/// Widget for displaying a splash loader with progress.
class _SplashLoaderWithProgress extends StatelessWidget {
  const _SplashLoaderWithProgress({
    required this.loadingProgress,
  });
  final double loadingProgress;

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator.adaptive(
          value: loadingProgress,
        ),
      );
}

/// A widget that displays a splash loader without progress.
class _SplashLoaderWithoutProgress extends StatelessWidget {
  const _SplashLoaderWithoutProgress();

  @override
  Widget build(BuildContext context) => const Center(child: CircularProgressIndicator.adaptive());
}
