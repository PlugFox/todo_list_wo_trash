// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  TaskEntity get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) idle,
    required TResult Function(TaskEntity task) updating,
    required TResult Function(TaskException error, TaskEntity task) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? idle,
    TResult? Function(TaskEntity task)? updating,
    TResult? Function(TaskException error, TaskEntity task)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? idle,
    TResult Function(TaskEntity task)? updating,
    TResult Function(TaskException error, TaskEntity task)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskState value) idle,
    required TResult Function(_LoadingTaskState value) updating,
    required TResult Function(_ErrorTaskState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskState value)? idle,
    TResult? Function(_LoadingTaskState value)? updating,
    TResult? Function(_ErrorTaskState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskState value)? idle,
    TResult Function(_LoadingTaskState value)? updating,
    TResult Function(_ErrorTaskState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleTaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$IdleTaskStateImplCopyWith(
          _$IdleTaskStateImpl value, $Res Function(_$IdleTaskStateImpl) then) =
      __$$IdleTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$IdleTaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$IdleTaskStateImpl>
    implements _$$IdleTaskStateImplCopyWith<$Res> {
  __$$IdleTaskStateImplCopyWithImpl(
      _$IdleTaskStateImpl _value, $Res Function(_$IdleTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$IdleTaskStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$IdleTaskStateImpl implements _IdleTaskState {
  _$IdleTaskStateImpl({required this.task});

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskState.idle(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleTaskStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleTaskStateImplCopyWith<_$IdleTaskStateImpl> get copyWith =>
      __$$IdleTaskStateImplCopyWithImpl<_$IdleTaskStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) idle,
    required TResult Function(TaskEntity task) updating,
    required TResult Function(TaskException error, TaskEntity task) error,
  }) {
    return idle(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? idle,
    TResult? Function(TaskEntity task)? updating,
    TResult? Function(TaskException error, TaskEntity task)? error,
  }) {
    return idle?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? idle,
    TResult Function(TaskEntity task)? updating,
    TResult Function(TaskException error, TaskEntity task)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskState value) idle,
    required TResult Function(_LoadingTaskState value) updating,
    required TResult Function(_ErrorTaskState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskState value)? idle,
    TResult? Function(_LoadingTaskState value)? updating,
    TResult? Function(_ErrorTaskState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskState value)? idle,
    TResult Function(_LoadingTaskState value)? updating,
    TResult Function(_ErrorTaskState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleTaskState implements TaskState {
  factory _IdleTaskState({required final TaskEntity task}) =
      _$IdleTaskStateImpl;

  @override
  TaskEntity get task;
  @override
  @JsonKey(ignore: true)
  _$$IdleTaskStateImplCopyWith<_$IdleTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$LoadingTaskStateImplCopyWith(_$LoadingTaskStateImpl value,
          $Res Function(_$LoadingTaskStateImpl) then) =
      __$$LoadingTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$LoadingTaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingTaskStateImpl>
    implements _$$LoadingTaskStateImplCopyWith<$Res> {
  __$$LoadingTaskStateImplCopyWithImpl(_$LoadingTaskStateImpl _value,
      $Res Function(_$LoadingTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$LoadingTaskStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$LoadingTaskStateImpl implements _LoadingTaskState {
  _$LoadingTaskStateImpl({required this.task});

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskState.updating(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTaskStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingTaskStateImplCopyWith<_$LoadingTaskStateImpl> get copyWith =>
      __$$LoadingTaskStateImplCopyWithImpl<_$LoadingTaskStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) idle,
    required TResult Function(TaskEntity task) updating,
    required TResult Function(TaskException error, TaskEntity task) error,
  }) {
    return updating(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? idle,
    TResult? Function(TaskEntity task)? updating,
    TResult? Function(TaskException error, TaskEntity task)? error,
  }) {
    return updating?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? idle,
    TResult Function(TaskEntity task)? updating,
    TResult Function(TaskException error, TaskEntity task)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskState value) idle,
    required TResult Function(_LoadingTaskState value) updating,
    required TResult Function(_ErrorTaskState value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskState value)? idle,
    TResult? Function(_LoadingTaskState value)? updating,
    TResult? Function(_ErrorTaskState value)? error,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskState value)? idle,
    TResult Function(_LoadingTaskState value)? updating,
    TResult Function(_ErrorTaskState value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _LoadingTaskState implements TaskState {
  factory _LoadingTaskState({required final TaskEntity task}) =
      _$LoadingTaskStateImpl;

  @override
  TaskEntity get task;
  @override
  @JsonKey(ignore: true)
  _$$LoadingTaskStateImplCopyWith<_$LoadingTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$ErrorTaskStateImplCopyWith(_$ErrorTaskStateImpl value,
          $Res Function(_$ErrorTaskStateImpl) then) =
      __$$ErrorTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskException error, TaskEntity task});
}

/// @nodoc
class __$$ErrorTaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$ErrorTaskStateImpl>
    implements _$$ErrorTaskStateImplCopyWith<$Res> {
  __$$ErrorTaskStateImplCopyWithImpl(
      _$ErrorTaskStateImpl _value, $Res Function(_$ErrorTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? task = null,
  }) {
    return _then(_$ErrorTaskStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TaskException,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$ErrorTaskStateImpl implements _ErrorTaskState {
  _$ErrorTaskStateImpl({required this.error, required this.task});

  @override
  final TaskException error;
  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskState.error(error: $error, task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTaskStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTaskStateImplCopyWith<_$ErrorTaskStateImpl> get copyWith =>
      __$$ErrorTaskStateImplCopyWithImpl<_$ErrorTaskStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) idle,
    required TResult Function(TaskEntity task) updating,
    required TResult Function(TaskException error, TaskEntity task) error,
  }) {
    return error(this.error, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? idle,
    TResult? Function(TaskEntity task)? updating,
    TResult? Function(TaskException error, TaskEntity task)? error,
  }) {
    return error?.call(this.error, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? idle,
    TResult Function(TaskEntity task)? updating,
    TResult Function(TaskException error, TaskEntity task)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskState value) idle,
    required TResult Function(_LoadingTaskState value) updating,
    required TResult Function(_ErrorTaskState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskState value)? idle,
    TResult? Function(_LoadingTaskState value)? updating,
    TResult? Function(_ErrorTaskState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskState value)? idle,
    TResult Function(_LoadingTaskState value)? updating,
    TResult Function(_ErrorTaskState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorTaskState implements TaskState {
  factory _ErrorTaskState(
      {required final TaskException error,
      required final TaskEntity task}) = _$ErrorTaskStateImpl;

  TaskException get error;
  @override
  TaskEntity get task;
  @override
  @JsonKey(ignore: true)
  _$$ErrorTaskStateImplCopyWith<_$ErrorTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskEvent {
  /// Updated task.
  TaskEntity get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTaskEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTaskEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTaskEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEventCopyWith<TaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskEventImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$UpdateTaskEventImplCopyWith(_$UpdateTaskEventImpl value,
          $Res Function(_$UpdateTaskEventImpl) then) =
      __$$UpdateTaskEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskEventImpl>
    implements _$$UpdateTaskEventImplCopyWith<$Res> {
  __$$UpdateTaskEventImplCopyWithImpl(
      _$UpdateTaskEventImpl _value, $Res Function(_$UpdateTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskEventImpl implements _UpdateTaskEvent {
  _$UpdateTaskEventImpl({required this.task});

  /// Updated task.
  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.update(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      __$$UpdateTaskEventImplCopyWithImpl<_$UpdateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity task) update,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity task)? update,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity task)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTaskEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTaskEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTaskEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateTaskEvent implements TaskEvent {
  factory _UpdateTaskEvent({required final TaskEntity task}) =
      _$UpdateTaskEventImpl;

  @override

  /// Updated task.
  TaskEntity get task;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
