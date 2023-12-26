// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(TaskEntity task) success,
    required TResult Function(TaskException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(TaskEntity task)? success,
    TResult? Function(TaskException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(TaskEntity task)? success,
    TResult Function(TaskException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskCreateState value) idle,
    required TResult Function(_LoadingTaskCreateState value) loading,
    required TResult Function(_SuccessTaskCreateState value) success,
    required TResult Function(_ErrorTaskCreateState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskCreateState value)? idle,
    TResult? Function(_LoadingTaskCreateState value)? loading,
    TResult? Function(_SuccessTaskCreateState value)? success,
    TResult? Function(_ErrorTaskCreateState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskCreateState value)? idle,
    TResult Function(_LoadingTaskCreateState value)? loading,
    TResult Function(_SuccessTaskCreateState value)? success,
    TResult Function(_ErrorTaskCreateState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res, TaskCreateState>;
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res, $Val extends TaskCreateState>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleTaskCreateStateImplCopyWith<$Res> {
  factory _$$IdleTaskCreateStateImplCopyWith(_$IdleTaskCreateStateImpl value,
          $Res Function(_$IdleTaskCreateStateImpl) then) =
      __$$IdleTaskCreateStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleTaskCreateStateImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$IdleTaskCreateStateImpl>
    implements _$$IdleTaskCreateStateImplCopyWith<$Res> {
  __$$IdleTaskCreateStateImplCopyWithImpl(_$IdleTaskCreateStateImpl _value,
      $Res Function(_$IdleTaskCreateStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleTaskCreateStateImpl extends _IdleTaskCreateState {
  _$IdleTaskCreateStateImpl() : super._();

  @override
  String toString() {
    return 'TaskCreateState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleTaskCreateStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(TaskEntity task) success,
    required TResult Function(TaskException error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(TaskEntity task)? success,
    TResult? Function(TaskException error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(TaskEntity task)? success,
    TResult Function(TaskException error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskCreateState value) idle,
    required TResult Function(_LoadingTaskCreateState value) loading,
    required TResult Function(_SuccessTaskCreateState value) success,
    required TResult Function(_ErrorTaskCreateState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskCreateState value)? idle,
    TResult? Function(_LoadingTaskCreateState value)? loading,
    TResult? Function(_SuccessTaskCreateState value)? success,
    TResult? Function(_ErrorTaskCreateState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskCreateState value)? idle,
    TResult Function(_LoadingTaskCreateState value)? loading,
    TResult Function(_SuccessTaskCreateState value)? success,
    TResult Function(_ErrorTaskCreateState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleTaskCreateState extends TaskCreateState {
  factory _IdleTaskCreateState() = _$IdleTaskCreateStateImpl;
  _IdleTaskCreateState._() : super._();
}

/// @nodoc
abstract class _$$LoadingTaskCreateStateImplCopyWith<$Res> {
  factory _$$LoadingTaskCreateStateImplCopyWith(
          _$LoadingTaskCreateStateImpl value,
          $Res Function(_$LoadingTaskCreateStateImpl) then) =
      __$$LoadingTaskCreateStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTaskCreateStateImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$LoadingTaskCreateStateImpl>
    implements _$$LoadingTaskCreateStateImplCopyWith<$Res> {
  __$$LoadingTaskCreateStateImplCopyWithImpl(
      _$LoadingTaskCreateStateImpl _value,
      $Res Function(_$LoadingTaskCreateStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingTaskCreateStateImpl extends _LoadingTaskCreateState {
  _$LoadingTaskCreateStateImpl() : super._();

  @override
  String toString() {
    return 'TaskCreateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTaskCreateStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(TaskEntity task) success,
    required TResult Function(TaskException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(TaskEntity task)? success,
    TResult? Function(TaskException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(TaskEntity task)? success,
    TResult Function(TaskException error)? error,
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
    required TResult Function(_IdleTaskCreateState value) idle,
    required TResult Function(_LoadingTaskCreateState value) loading,
    required TResult Function(_SuccessTaskCreateState value) success,
    required TResult Function(_ErrorTaskCreateState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskCreateState value)? idle,
    TResult? Function(_LoadingTaskCreateState value)? loading,
    TResult? Function(_SuccessTaskCreateState value)? success,
    TResult? Function(_ErrorTaskCreateState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskCreateState value)? idle,
    TResult Function(_LoadingTaskCreateState value)? loading,
    TResult Function(_SuccessTaskCreateState value)? success,
    TResult Function(_ErrorTaskCreateState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingTaskCreateState extends TaskCreateState {
  factory _LoadingTaskCreateState() = _$LoadingTaskCreateStateImpl;
  _LoadingTaskCreateState._() : super._();
}

/// @nodoc
abstract class _$$SuccessTaskCreateStateImplCopyWith<$Res> {
  factory _$$SuccessTaskCreateStateImplCopyWith(
          _$SuccessTaskCreateStateImpl value,
          $Res Function(_$SuccessTaskCreateStateImpl) then) =
      __$$SuccessTaskCreateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$SuccessTaskCreateStateImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$SuccessTaskCreateStateImpl>
    implements _$$SuccessTaskCreateStateImplCopyWith<$Res> {
  __$$SuccessTaskCreateStateImplCopyWithImpl(
      _$SuccessTaskCreateStateImpl _value,
      $Res Function(_$SuccessTaskCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SuccessTaskCreateStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$SuccessTaskCreateStateImpl extends _SuccessTaskCreateState {
  _$SuccessTaskCreateStateImpl({required this.task}) : super._();

  /// Created task.
  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskCreateState.success(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessTaskCreateStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessTaskCreateStateImplCopyWith<_$SuccessTaskCreateStateImpl>
      get copyWith => __$$SuccessTaskCreateStateImplCopyWithImpl<
          _$SuccessTaskCreateStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(TaskEntity task) success,
    required TResult Function(TaskException error) error,
  }) {
    return success(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(TaskEntity task)? success,
    TResult? Function(TaskException error)? error,
  }) {
    return success?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(TaskEntity task)? success,
    TResult Function(TaskException error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskCreateState value) idle,
    required TResult Function(_LoadingTaskCreateState value) loading,
    required TResult Function(_SuccessTaskCreateState value) success,
    required TResult Function(_ErrorTaskCreateState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskCreateState value)? idle,
    TResult? Function(_LoadingTaskCreateState value)? loading,
    TResult? Function(_SuccessTaskCreateState value)? success,
    TResult? Function(_ErrorTaskCreateState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskCreateState value)? idle,
    TResult Function(_LoadingTaskCreateState value)? loading,
    TResult Function(_SuccessTaskCreateState value)? success,
    TResult Function(_ErrorTaskCreateState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessTaskCreateState extends TaskCreateState {
  factory _SuccessTaskCreateState({required final TaskEntity task}) =
      _$SuccessTaskCreateStateImpl;
  _SuccessTaskCreateState._() : super._();

  /// Created task.
  TaskEntity get task;
  @JsonKey(ignore: true)
  _$$SuccessTaskCreateStateImplCopyWith<_$SuccessTaskCreateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTaskCreateStateImplCopyWith<$Res> {
  factory _$$ErrorTaskCreateStateImplCopyWith(_$ErrorTaskCreateStateImpl value,
          $Res Function(_$ErrorTaskCreateStateImpl) then) =
      __$$ErrorTaskCreateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskException error});
}

/// @nodoc
class __$$ErrorTaskCreateStateImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$ErrorTaskCreateStateImpl>
    implements _$$ErrorTaskCreateStateImplCopyWith<$Res> {
  __$$ErrorTaskCreateStateImplCopyWithImpl(_$ErrorTaskCreateStateImpl _value,
      $Res Function(_$ErrorTaskCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorTaskCreateStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TaskException,
    ));
  }
}

/// @nodoc

class _$ErrorTaskCreateStateImpl extends _ErrorTaskCreateState {
  _$ErrorTaskCreateStateImpl({required this.error}) : super._();

  @override
  final TaskException error;

  @override
  String toString() {
    return 'TaskCreateState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTaskCreateStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTaskCreateStateImplCopyWith<_$ErrorTaskCreateStateImpl>
      get copyWith =>
          __$$ErrorTaskCreateStateImplCopyWithImpl<_$ErrorTaskCreateStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(TaskEntity task) success,
    required TResult Function(TaskException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(TaskEntity task)? success,
    TResult? Function(TaskException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(TaskEntity task)? success,
    TResult Function(TaskException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleTaskCreateState value) idle,
    required TResult Function(_LoadingTaskCreateState value) loading,
    required TResult Function(_SuccessTaskCreateState value) success,
    required TResult Function(_ErrorTaskCreateState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleTaskCreateState value)? idle,
    TResult? Function(_LoadingTaskCreateState value)? loading,
    TResult? Function(_SuccessTaskCreateState value)? success,
    TResult? Function(_ErrorTaskCreateState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleTaskCreateState value)? idle,
    TResult Function(_LoadingTaskCreateState value)? loading,
    TResult Function(_SuccessTaskCreateState value)? success,
    TResult Function(_ErrorTaskCreateState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorTaskCreateState extends TaskCreateState {
  factory _ErrorTaskCreateState({required final TaskException error}) =
      _$ErrorTaskCreateStateImpl;
  _ErrorTaskCreateState._() : super._();

  TaskException get error;
  @JsonKey(ignore: true)
  _$$ErrorTaskCreateStateImplCopyWith<_$ErrorTaskCreateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCreateRequest request) create,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateRequest request)? create,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCreateRequest request)? create,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTaskCreateEvent value) create,
    required TResult Function(_InitTaskCreateEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTaskCreateEvent value)? create,
    TResult? Function(_InitTaskCreateEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTaskCreateEvent value)? create,
    TResult Function(_InitTaskCreateEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateEventCopyWith<$Res> {
  factory $TaskCreateEventCopyWith(
          TaskCreateEvent value, $Res Function(TaskCreateEvent) then) =
      _$TaskCreateEventCopyWithImpl<$Res, TaskCreateEvent>;
}

/// @nodoc
class _$TaskCreateEventCopyWithImpl<$Res, $Val extends TaskCreateEvent>
    implements $TaskCreateEventCopyWith<$Res> {
  _$TaskCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateTaskCreateEventImplCopyWith<$Res> {
  factory _$$CreateTaskCreateEventImplCopyWith(
          _$CreateTaskCreateEventImpl value,
          $Res Function(_$CreateTaskCreateEventImpl) then) =
      __$$CreateTaskCreateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskCreateRequest request});
}

/// @nodoc
class __$$CreateTaskCreateEventImplCopyWithImpl<$Res>
    extends _$TaskCreateEventCopyWithImpl<$Res, _$CreateTaskCreateEventImpl>
    implements _$$CreateTaskCreateEventImplCopyWith<$Res> {
  __$$CreateTaskCreateEventImplCopyWithImpl(_$CreateTaskCreateEventImpl _value,
      $Res Function(_$CreateTaskCreateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateTaskCreateEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TaskCreateRequest,
    ));
  }
}

/// @nodoc

class _$CreateTaskCreateEventImpl implements _CreateTaskCreateEvent {
  _$CreateTaskCreateEventImpl({required this.request});

  /// Task title.
  @override
  final TaskCreateRequest request;

  @override
  String toString() {
    return 'TaskCreateEvent.create(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskCreateEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskCreateEventImplCopyWith<_$CreateTaskCreateEventImpl>
      get copyWith => __$$CreateTaskCreateEventImplCopyWithImpl<
          _$CreateTaskCreateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCreateRequest request) create,
    required TResult Function() init,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateRequest request)? create,
    TResult? Function()? init,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCreateRequest request)? create,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTaskCreateEvent value) create,
    required TResult Function(_InitTaskCreateEvent value) init,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTaskCreateEvent value)? create,
    TResult? Function(_InitTaskCreateEvent value)? init,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTaskCreateEvent value)? create,
    TResult Function(_InitTaskCreateEvent value)? init,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateTaskCreateEvent implements TaskCreateEvent {
  factory _CreateTaskCreateEvent({required final TaskCreateRequest request}) =
      _$CreateTaskCreateEventImpl;

  /// Task title.
  TaskCreateRequest get request;
  @JsonKey(ignore: true)
  _$$CreateTaskCreateEventImplCopyWith<_$CreateTaskCreateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitTaskCreateEventImplCopyWith<$Res> {
  factory _$$InitTaskCreateEventImplCopyWith(_$InitTaskCreateEventImpl value,
          $Res Function(_$InitTaskCreateEventImpl) then) =
      __$$InitTaskCreateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitTaskCreateEventImplCopyWithImpl<$Res>
    extends _$TaskCreateEventCopyWithImpl<$Res, _$InitTaskCreateEventImpl>
    implements _$$InitTaskCreateEventImplCopyWith<$Res> {
  __$$InitTaskCreateEventImplCopyWithImpl(_$InitTaskCreateEventImpl _value,
      $Res Function(_$InitTaskCreateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitTaskCreateEventImpl implements _InitTaskCreateEvent {
  _$InitTaskCreateEventImpl();

  @override
  String toString() {
    return 'TaskCreateEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitTaskCreateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCreateRequest request) create,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateRequest request)? create,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCreateRequest request)? create,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTaskCreateEvent value) create,
    required TResult Function(_InitTaskCreateEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTaskCreateEvent value)? create,
    TResult? Function(_InitTaskCreateEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTaskCreateEvent value)? create,
    TResult Function(_InitTaskCreateEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitTaskCreateEvent implements TaskCreateEvent {
  factory _InitTaskCreateEvent() = _$InitTaskCreateEventImpl;
}
