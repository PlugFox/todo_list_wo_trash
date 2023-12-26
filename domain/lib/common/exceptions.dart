/// {@template app_exception}
/// Represents an exception specific to the application.
/// {@endtemplate}
class AppException implements Exception {
  /// {@macro app_exception}
  AppException({required this.message, this.stackTrace});

  /// The message associated with the exception.
  final String message;

  /// The stack trace associated with the exception.
  final StackTrace? stackTrace;
}
