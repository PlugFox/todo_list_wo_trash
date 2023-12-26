// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) loaded,
    required TResult Function(TaskException exception, List<TaskEntity>? tasks)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? loaded,
    TResult? Function(TaskException exception, List<TaskEntity>? tasks)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? loaded,
    TResult Function(TaskException exception, List<TaskEntity>? tasks)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskListState value) initial,
    required TResult Function(_LoadingTaskListState value) loading,
    required TResult Function(_LoadedTaskListState value) loaded,
    required TResult Function(_ErrorTaskListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskListState value)? initial,
    TResult? Function(_LoadingTaskListState value)? loading,
    TResult? Function(_LoadedTaskListState value)? loaded,
    TResult? Function(_ErrorTaskListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskListState value)? initial,
    TResult Function(_LoadingTaskListState value)? loading,
    TResult Function(_LoadedTaskListState value)? loaded,
    TResult Function(_ErrorTaskListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialTaskListStateImplCopyWith<$Res> {
  factory _$$InitialTaskListStateImplCopyWith(_$InitialTaskListStateImpl value,
          $Res Function(_$InitialTaskListStateImpl) then) =
      __$$InitialTaskListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$InitialTaskListStateImpl>
    implements _$$InitialTaskListStateImplCopyWith<$Res> {
  __$$InitialTaskListStateImplCopyWithImpl(_$InitialTaskListStateImpl _value,
      $Res Function(_$InitialTaskListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialTaskListStateImpl implements _InitialTaskListState {
  const _$InitialTaskListStateImpl();

  @override
  String toString() {
    return 'TaskListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialTaskListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) loaded,
    required TResult Function(TaskException exception, List<TaskEntity>? tasks)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? loaded,
    TResult? Function(TaskException exception, List<TaskEntity>? tasks)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? loaded,
    TResult Function(TaskException exception, List<TaskEntity>? tasks)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskListState value) initial,
    required TResult Function(_LoadingTaskListState value) loading,
    required TResult Function(_LoadedTaskListState value) loaded,
    required TResult Function(_ErrorTaskListState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskListState value)? initial,
    TResult? Function(_LoadingTaskListState value)? loading,
    TResult? Function(_LoadedTaskListState value)? loaded,
    TResult? Function(_ErrorTaskListState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskListState value)? initial,
    TResult Function(_LoadingTaskListState value)? loading,
    TResult Function(_LoadedTaskListState value)? loaded,
    TResult Function(_ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTaskListState implements TaskListState {
  const factory _InitialTaskListState() = _$InitialTaskListStateImpl;
}

/// @nodoc
abstract class _$$LoadingTaskListStateImplCopyWith<$Res> {
  factory _$$LoadingTaskListStateImplCopyWith(_$LoadingTaskListStateImpl value,
          $Res Function(_$LoadingTaskListStateImpl) then) =
      __$$LoadingTaskListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$LoadingTaskListStateImpl>
    implements _$$LoadingTaskListStateImplCopyWith<$Res> {
  __$$LoadingTaskListStateImplCopyWithImpl(_$LoadingTaskListStateImpl _value,
      $Res Function(_$LoadingTaskListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingTaskListStateImpl implements _LoadingTaskListState {
  const _$LoadingTaskListStateImpl();

  @override
  String toString() {
    return 'TaskListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTaskListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) loaded,
    required TResult Function(TaskException exception, List<TaskEntity>? tasks)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? loaded,
    TResult? Function(TaskException exception, List<TaskEntity>? tasks)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? loaded,
    TResult Function(TaskException exception, List<TaskEntity>? tasks)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskListState value) initial,
    required TResult Function(_LoadingTaskListState value) loading,
    required TResult Function(_LoadedTaskListState value) loaded,
    required TResult Function(_ErrorTaskListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskListState value)? initial,
    TResult? Function(_LoadingTaskListState value)? loading,
    TResult? Function(_LoadedTaskListState value)? loaded,
    TResult? Function(_ErrorTaskListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskListState value)? initial,
    TResult Function(_LoadingTaskListState value)? loading,
    TResult Function(_LoadedTaskListState value)? loaded,
    TResult Function(_ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingTaskListState implements TaskListState {
  const factory _LoadingTaskListState() = _$LoadingTaskListStateImpl;
}

/// @nodoc
abstract class _$$LoadedTaskListStateImplCopyWith<$Res> {
  factory _$$LoadedTaskListStateImplCopyWith(_$LoadedTaskListStateImpl value,
          $Res Function(_$LoadedTaskListStateImpl) then) =
      __$$LoadedTaskListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$LoadedTaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$LoadedTaskListStateImpl>
    implements _$$LoadedTaskListStateImplCopyWith<$Res> {
  __$$LoadedTaskListStateImplCopyWithImpl(_$LoadedTaskListStateImpl _value,
      $Res Function(_$LoadedTaskListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadedTaskListStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedTaskListStateImpl implements _LoadedTaskListState {
  const _$LoadedTaskListStateImpl({required final List<TaskEntity> tasks})
      : _tasks = tasks;

  /// Loaded list with tasks.
  final List<TaskEntity> _tasks;

  /// Loaded list with tasks.
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskListState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedTaskListStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedTaskListStateImplCopyWith<_$LoadedTaskListStateImpl> get copyWith =>
      __$$LoadedTaskListStateImplCopyWithImpl<_$LoadedTaskListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) loaded,
    required TResult Function(TaskException exception, List<TaskEntity>? tasks)
        error,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? loaded,
    TResult? Function(TaskException exception, List<TaskEntity>? tasks)? error,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? loaded,
    TResult Function(TaskException exception, List<TaskEntity>? tasks)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskListState value) initial,
    required TResult Function(_LoadingTaskListState value) loading,
    required TResult Function(_LoadedTaskListState value) loaded,
    required TResult Function(_ErrorTaskListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskListState value)? initial,
    TResult? Function(_LoadingTaskListState value)? loading,
    TResult? Function(_LoadedTaskListState value)? loaded,
    TResult? Function(_ErrorTaskListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskListState value)? initial,
    TResult Function(_LoadingTaskListState value)? loading,
    TResult Function(_LoadedTaskListState value)? loaded,
    TResult Function(_ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedTaskListState implements TaskListState {
  const factory _LoadedTaskListState({required final List<TaskEntity> tasks}) =
      _$LoadedTaskListStateImpl;

  /// Loaded list with tasks.
  List<TaskEntity> get tasks;
  @JsonKey(ignore: true)
  _$$LoadedTaskListStateImplCopyWith<_$LoadedTaskListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTaskListStateImplCopyWith<$Res> {
  factory _$$ErrorTaskListStateImplCopyWith(_$ErrorTaskListStateImpl value,
          $Res Function(_$ErrorTaskListStateImpl) then) =
      __$$ErrorTaskListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskException exception, List<TaskEntity>? tasks});
}

/// @nodoc
class __$$ErrorTaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$ErrorTaskListStateImpl>
    implements _$$ErrorTaskListStateImplCopyWith<$Res> {
  __$$ErrorTaskListStateImplCopyWithImpl(_$ErrorTaskListStateImpl _value,
      $Res Function(_$ErrorTaskListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? tasks = freezed,
  }) {
    return _then(_$ErrorTaskListStateImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as TaskException,
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
    ));
  }
}

/// @nodoc

class _$ErrorTaskListStateImpl implements _ErrorTaskListState {
  const _$ErrorTaskListStateImpl(
      {required this.exception, final List<TaskEntity>? tasks})
      : _tasks = tasks;

  @override
  final TaskException exception;
  final List<TaskEntity>? _tasks;
  @override
  List<TaskEntity>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TaskListState.error(exception: $exception, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTaskListStateImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exception, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTaskListStateImplCopyWith<_$ErrorTaskListStateImpl> get copyWith =>
      __$$ErrorTaskListStateImplCopyWithImpl<_$ErrorTaskListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskEntity> tasks) loaded,
    required TResult Function(TaskException exception, List<TaskEntity>? tasks)
        error,
  }) {
    return error(exception, tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskEntity> tasks)? loaded,
    TResult? Function(TaskException exception, List<TaskEntity>? tasks)? error,
  }) {
    return error?.call(exception, tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskEntity> tasks)? loaded,
    TResult Function(TaskException exception, List<TaskEntity>? tasks)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskListState value) initial,
    required TResult Function(_LoadingTaskListState value) loading,
    required TResult Function(_LoadedTaskListState value) loaded,
    required TResult Function(_ErrorTaskListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskListState value)? initial,
    TResult? Function(_LoadingTaskListState value)? loading,
    TResult? Function(_LoadedTaskListState value)? loaded,
    TResult? Function(_ErrorTaskListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskListState value)? initial,
    TResult Function(_LoadingTaskListState value)? loading,
    TResult Function(_LoadedTaskListState value)? loaded,
    TResult Function(_ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorTaskListState implements TaskListState {
  const factory _ErrorTaskListState(
      {required final TaskException exception,
      final List<TaskEntity>? tasks}) = _$ErrorTaskListStateImpl;

  TaskException get exception;
  List<TaskEntity>? get tasks;
  @JsonKey(ignore: true)
  _$$ErrorTaskListStateImplCopyWith<_$ErrorTaskListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskFilterRequest filterRequest) load,
    required TResult Function(TaskEntity task) add,
    required TResult Function(TaskEntity task) update,
    required TResult Function(String taskId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskFilterRequest filterRequest)? load,
    TResult? Function(TaskEntity task)? add,
    TResult? Function(TaskEntity task)? update,
    TResult? Function(String taskId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskFilterRequest filterRequest)? load,
    TResult Function(TaskEntity task)? add,
    TResult Function(TaskEntity task)? update,
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTaskListEvent value) load,
    required TResult Function(_AddTaskListEvent value) add,
    required TResult Function(_UpdateTaskListEvent value) update,
    required TResult Function(_DeleteTaskListEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTaskListEvent value)? load,
    TResult? Function(_AddTaskListEvent value)? add,
    TResult? Function(_UpdateTaskListEvent value)? update,
    TResult? Function(_DeleteTaskListEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTaskListEvent value)? load,
    TResult Function(_AddTaskListEvent value)? add,
    TResult Function(_UpdateTaskListEvent value)? update,
    TResult Function(_DeleteTaskListEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res, TaskListEvent>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res, $Val extends TaskListEvent>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTaskListEventImplCopyWith<$Res> {
  factory _$$LoadTaskListEventImplCopyWith(_$LoadTaskListEventImpl value,
          $Res Function(_$LoadTaskListEventImpl) then) =
      __$$LoadTaskListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFilterRequest filterRequest});
}

/// @nodoc
class __$$LoadTaskListEventImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$LoadTaskListEventImpl>
    implements _$$LoadTaskListEventImplCopyWith<$Res> {
  __$$LoadTaskListEventImplCopyWithImpl(_$LoadTaskListEventImpl _value,
      $Res Function(_$LoadTaskListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterRequest = null,
  }) {
    return _then(_$LoadTaskListEventImpl(
      filterRequest: null == filterRequest
          ? _value.filterRequest
          : filterRequest // ignore: cast_nullable_to_non_nullable
              as TaskFilterRequest,
    ));
  }
}

/// @nodoc

class _$LoadTaskListEventImpl implements _LoadTaskListEvent {
  const _$LoadTaskListEventImpl({required this.filterRequest});

  @override
  final TaskFilterRequest filterRequest;

  @override
  String toString() {
    return 'TaskListEvent.load(filterRequest: $filterRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTaskListEventImpl &&
            (identical(other.filterRequest, filterRequest) ||
                other.filterRequest == filterRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTaskListEventImplCopyWith<_$LoadTaskListEventImpl> get copyWith =>
      __$$LoadTaskListEventImplCopyWithImpl<_$LoadTaskListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskFilterRequest filterRequest) load,
    required TResult Function(TaskEntity task) add,
    required TResult Function(TaskEntity task) update,
    required TResult Function(String taskId) delete,
  }) {
    return load(filterRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskFilterRequest filterRequest)? load,
    TResult? Function(TaskEntity task)? add,
    TResult? Function(TaskEntity task)? update,
    TResult? Function(String taskId)? delete,
  }) {
    return load?.call(filterRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskFilterRequest filterRequest)? load,
    TResult Function(TaskEntity task)? add,
    TResult Function(TaskEntity task)? update,
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(filterRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTaskListEvent value) load,
    required TResult Function(_AddTaskListEvent value) add,
    required TResult Function(_UpdateTaskListEvent value) update,
    required TResult Function(_DeleteTaskListEvent value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTaskListEvent value)? load,
    TResult? Function(_AddTaskListEvent value)? add,
    TResult? Function(_UpdateTaskListEvent value)? update,
    TResult? Function(_DeleteTaskListEvent value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTaskListEvent value)? load,
    TResult Function(_AddTaskListEvent value)? add,
    TResult Function(_UpdateTaskListEvent value)? update,
    TResult Function(_DeleteTaskListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadTaskListEvent implements TaskListEvent {
  const factory _LoadTaskListEvent(
          {required final TaskFilterRequest filterRequest}) =
      _$LoadTaskListEventImpl;

  TaskFilterRequest get filterRequest;
  @JsonKey(ignore: true)
  _$$LoadTaskListEventImplCopyWith<_$LoadTaskListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskListEventImplCopyWith<$Res> {
  factory _$$AddTaskListEventImplCopyWith(_$AddTaskListEventImpl value,
          $Res Function(_$AddTaskListEventImpl) then) =
      __$$AddTaskListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$AddTaskListEventImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$AddTaskListEventImpl>
    implements _$$AddTaskListEventImplCopyWith<$Res> {
  __$$AddTaskListEventImplCopyWithImpl(_$AddTaskListEventImpl _value,
      $Res Function(_$AddTaskListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskListEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$AddTaskListEventImpl implements _AddTaskListEvent {
  const _$AddTaskListEventImpl({required this.task});

  /// Task to add.
  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskListEvent.add(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskListEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskListEventImplCopyWith<_$AddTaskListEventImpl> get copyWith =>
      __$$AddTaskListEventImplCopyWithImpl<_$AddTaskListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskFilterRequest filterRequest) load,
    required TResult Function(TaskEntity task) add,
    required TResult Function(TaskEntity task) update,
    required TResult Function(String taskId) delete,
  }) {
    return add(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskFilterRequest filterRequest)? load,
    TResult? Function(TaskEntity task)? add,
    TResult? Function(TaskEntity task)? update,
    TResult? Function(String taskId)? delete,
  }) {
    return add?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskFilterRequest filterRequest)? load,
    TResult Function(TaskEntity task)? add,
    TResult Function(TaskEntity task)? update,
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTaskListEvent value) load,
    required TResult Function(_AddTaskListEvent value) add,
    required TResult Function(_UpdateTaskListEvent value) update,
    required TResult Function(_DeleteTaskListEvent value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTaskListEvent value)? load,
    TResult? Function(_AddTaskListEvent value)? add,
    TResult? Function(_UpdateTaskListEvent value)? update,
    TResult? Function(_DeleteTaskListEvent value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTaskListEvent value)? load,
    TResult Function(_AddTaskListEvent value)? add,
    TResult Function(_UpdateTaskListEvent value)? update,
    TResult Function(_DeleteTaskListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddTaskListEvent implements TaskListEvent {
  const factory _AddTaskListEvent({required final TaskEntity task}) =
      _$AddTaskListEventImpl;

  /// Task to add.
  TaskEntity get task;
  @JsonKey(ignore: true)
  _$$AddTaskListEventImplCopyWith<_$AddTaskListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskListEventImplCopyWith<$Res> {
  factory _$$UpdateTaskListEventImplCopyWith(_$UpdateTaskListEventImpl value,
          $Res Function(_$UpdateTaskListEventImpl) then) =
      __$$UpdateTaskListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskListEventImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$UpdateTaskListEventImpl>
    implements _$$UpdateTaskListEventImplCopyWith<$Res> {
  __$$UpdateTaskListEventImplCopyWithImpl(_$UpdateTaskListEventImpl _value,
      $Res Function(_$UpdateTaskListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateTaskListEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskListEventImpl implements _UpdateTaskListEvent {
  const _$UpdateTaskListEventImpl({required this.task});

  /// Updated task.
  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskListEvent.update(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskListEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskListEventImplCopyWith<_$UpdateTaskListEventImpl> get copyWith =>
      __$$UpdateTaskListEventImplCopyWithImpl<_$UpdateTaskListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskFilterRequest filterRequest) load,
    required TResult Function(TaskEntity task) add,
    required TResult Function(TaskEntity task) update,
    required TResult Function(String taskId) delete,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskFilterRequest filterRequest)? load,
    TResult? Function(TaskEntity task)? add,
    TResult? Function(TaskEntity task)? update,
    TResult? Function(String taskId)? delete,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskFilterRequest filterRequest)? load,
    TResult Function(TaskEntity task)? add,
    TResult Function(TaskEntity task)? update,
    TResult Function(String taskId)? delete,
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
    required TResult Function(_LoadTaskListEvent value) load,
    required TResult Function(_AddTaskListEvent value) add,
    required TResult Function(_UpdateTaskListEvent value) update,
    required TResult Function(_DeleteTaskListEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTaskListEvent value)? load,
    TResult? Function(_AddTaskListEvent value)? add,
    TResult? Function(_UpdateTaskListEvent value)? update,
    TResult? Function(_DeleteTaskListEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTaskListEvent value)? load,
    TResult Function(_AddTaskListEvent value)? add,
    TResult Function(_UpdateTaskListEvent value)? update,
    TResult Function(_DeleteTaskListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateTaskListEvent implements TaskListEvent {
  const factory _UpdateTaskListEvent({required final TaskEntity task}) =
      _$UpdateTaskListEventImpl;

  /// Updated task.
  TaskEntity get task;
  @JsonKey(ignore: true)
  _$$UpdateTaskListEventImplCopyWith<_$UpdateTaskListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskListEventImplCopyWith<$Res> {
  factory _$$DeleteTaskListEventImplCopyWith(_$DeleteTaskListEventImpl value,
          $Res Function(_$DeleteTaskListEventImpl) then) =
      __$$DeleteTaskListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskListEventImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$DeleteTaskListEventImpl>
    implements _$$DeleteTaskListEventImplCopyWith<$Res> {
  __$$DeleteTaskListEventImplCopyWithImpl(_$DeleteTaskListEventImpl _value,
      $Res Function(_$DeleteTaskListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskListEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskListEventImpl implements _DeleteTaskListEvent {
  const _$DeleteTaskListEventImpl({required this.taskId});

  /// Deleted task.
  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskListEvent.delete(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskListEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskListEventImplCopyWith<_$DeleteTaskListEventImpl> get copyWith =>
      __$$DeleteTaskListEventImplCopyWithImpl<_$DeleteTaskListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskFilterRequest filterRequest) load,
    required TResult Function(TaskEntity task) add,
    required TResult Function(TaskEntity task) update,
    required TResult Function(String taskId) delete,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskFilterRequest filterRequest)? load,
    TResult? Function(TaskEntity task)? add,
    TResult? Function(TaskEntity task)? update,
    TResult? Function(String taskId)? delete,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskFilterRequest filterRequest)? load,
    TResult Function(TaskEntity task)? add,
    TResult Function(TaskEntity task)? update,
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTaskListEvent value) load,
    required TResult Function(_AddTaskListEvent value) add,
    required TResult Function(_UpdateTaskListEvent value) update,
    required TResult Function(_DeleteTaskListEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTaskListEvent value)? load,
    TResult? Function(_AddTaskListEvent value)? add,
    TResult? Function(_UpdateTaskListEvent value)? update,
    TResult? Function(_DeleteTaskListEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTaskListEvent value)? load,
    TResult Function(_AddTaskListEvent value)? add,
    TResult Function(_UpdateTaskListEvent value)? update,
    TResult Function(_DeleteTaskListEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteTaskListEvent implements TaskListEvent {
  const factory _DeleteTaskListEvent({required final String taskId}) =
      _$DeleteTaskListEventImpl;

  /// Deleted task.
  String get taskId;
  @JsonKey(ignore: true)
  _$$DeleteTaskListEventImplCopyWith<_$DeleteTaskListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
