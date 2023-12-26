import 'package:domain/common/exceptions.dart';

/// {@template task_exception}
/// Base class for all task-related exceptions in the application.
/// Extends the [AppException] class.
/// {@endtemplate}
base class TaskException extends AppException {
  /// {@macro task_exception}
  TaskException({
    required super.message,
    super.stackTrace,
  });
}

/// Exception thrown when there is an error creating a task.
final class TaskCreateException extends TaskException {
  /// {@macro task_create_exception}
  TaskCreateException({
    required super.message,
    super.stackTrace,
  });
}

/// Exception thrown when there is an error updating a task.
final class TaskUpdateException extends TaskException {
  /// {@macro task_update_exception}
  TaskUpdateException({
    required super.message,
    super.stackTrace,
  });
}

/// Exception thrown when there is an error deleting a task.
final class TaskDeleteException extends TaskException {
  /// {@macro task_delete_exception}
  TaskDeleteException({
    required super.message,
    super.stackTrace,
  });
}

/// Exception thrown when there is an error reading a task.
final class TaskReadException extends TaskException {
  /// {@macro task_read_exception}
  TaskReadException({
    required super.message,
    super.stackTrace,
  });
}
