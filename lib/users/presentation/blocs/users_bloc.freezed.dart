// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersEventTearOff {
  const _$UsersEventTearOff();

  UsersEventStarted started() {
    return const UsersEventStarted();
  }
}

/// @nodoc
const $UsersEvent = _$UsersEventTearOff();

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class $UsersEventStartedCopyWith<$Res> {
  factory $UsersEventStartedCopyWith(
          UsersEventStarted value, $Res Function(UsersEventStarted) then) =
      _$UsersEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventStartedCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements $UsersEventStartedCopyWith<$Res> {
  _$UsersEventStartedCopyWithImpl(
      UsersEventStarted _value, $Res Function(UsersEventStarted) _then)
      : super(_value, (v) => _then(v as UsersEventStarted));

  @override
  UsersEventStarted get _value => super._value as UsersEventStarted;
}

/// @nodoc

class _$UsersEventStarted implements UsersEventStarted {
  const _$UsersEventStarted();

  @override
  String toString() {
    return 'UsersEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UsersEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UsersEventStarted implements UsersEvent {
  const factory UsersEventStarted() = _$UsersEventStarted;
}

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

  UsersStateInProgress inProgress() {
    return const UsersStateInProgress();
  }

  UsersStateSuccess success(Iterable<User> users) {
    return UsersStateSuccess(
      users,
    );
  }

  UsersStateFailure failure(Exception exception) {
    return UsersStateFailure(
      exception,
    );
  }
}

/// @nodoc
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Iterable<User> users) success,
    required TResult Function(Exception exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateInProgress value) inProgress,
    required TResult Function(UsersStateSuccess value) success,
    required TResult Function(UsersStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;
}

/// @nodoc
abstract class $UsersStateInProgressCopyWith<$Res> {
  factory $UsersStateInProgressCopyWith(UsersStateInProgress value,
          $Res Function(UsersStateInProgress) then) =
      _$UsersStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateInProgressCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements $UsersStateInProgressCopyWith<$Res> {
  _$UsersStateInProgressCopyWithImpl(
      UsersStateInProgress _value, $Res Function(UsersStateInProgress) _then)
      : super(_value, (v) => _then(v as UsersStateInProgress));

  @override
  UsersStateInProgress get _value => super._value as UsersStateInProgress;
}

/// @nodoc

class _$UsersStateInProgress implements UsersStateInProgress {
  const _$UsersStateInProgress();

  @override
  String toString() {
    return 'UsersState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UsersStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Iterable<User> users) success,
    required TResult Function(Exception exception) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateInProgress value) inProgress,
    required TResult Function(UsersStateSuccess value) success,
    required TResult Function(UsersStateFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class UsersStateInProgress implements UsersState {
  const factory UsersStateInProgress() = _$UsersStateInProgress;
}

/// @nodoc
abstract class $UsersStateSuccessCopyWith<$Res> {
  factory $UsersStateSuccessCopyWith(
          UsersStateSuccess value, $Res Function(UsersStateSuccess) then) =
      _$UsersStateSuccessCopyWithImpl<$Res>;
  $Res call({Iterable<User> users});
}

/// @nodoc
class _$UsersStateSuccessCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements $UsersStateSuccessCopyWith<$Res> {
  _$UsersStateSuccessCopyWithImpl(
      UsersStateSuccess _value, $Res Function(UsersStateSuccess) _then)
      : super(_value, (v) => _then(v as UsersStateSuccess));

  @override
  UsersStateSuccess get _value => super._value as UsersStateSuccess;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(UsersStateSuccess(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Iterable<User>,
    ));
  }
}

/// @nodoc

class _$UsersStateSuccess implements UsersStateSuccess {
  const _$UsersStateSuccess(this.users);

  @override
  final Iterable<User> users;

  @override
  String toString() {
    return 'UsersState.success(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsersStateSuccess &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  $UsersStateSuccessCopyWith<UsersStateSuccess> get copyWith =>
      _$UsersStateSuccessCopyWithImpl<UsersStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Iterable<User> users) success,
    required TResult Function(Exception exception) failure,
  }) {
    return success(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
  }) {
    return success?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateInProgress value) inProgress,
    required TResult Function(UsersStateSuccess value) success,
    required TResult Function(UsersStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UsersStateSuccess implements UsersState {
  const factory UsersStateSuccess(Iterable<User> users) = _$UsersStateSuccess;

  Iterable<User> get users;
  @JsonKey(ignore: true)
  $UsersStateSuccessCopyWith<UsersStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateFailureCopyWith<$Res> {
  factory $UsersStateFailureCopyWith(
          UsersStateFailure value, $Res Function(UsersStateFailure) then) =
      _$UsersStateFailureCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class _$UsersStateFailureCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements $UsersStateFailureCopyWith<$Res> {
  _$UsersStateFailureCopyWithImpl(
      UsersStateFailure _value, $Res Function(UsersStateFailure) _then)
      : super(_value, (v) => _then(v as UsersStateFailure));

  @override
  UsersStateFailure get _value => super._value as UsersStateFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(UsersStateFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$UsersStateFailure implements UsersStateFailure {
  const _$UsersStateFailure(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'UsersState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsersStateFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  $UsersStateFailureCopyWith<UsersStateFailure> get copyWith =>
      _$UsersStateFailureCopyWithImpl<UsersStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Iterable<User> users) success,
    required TResult Function(Exception exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Iterable<User> users)? success,
    TResult Function(Exception exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateInProgress value) inProgress,
    required TResult Function(UsersStateSuccess value) success,
    required TResult Function(UsersStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateInProgress value)? inProgress,
    TResult Function(UsersStateSuccess value)? success,
    TResult Function(UsersStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UsersStateFailure implements UsersState {
  const factory UsersStateFailure(Exception exception) = _$UsersStateFailure;

  Exception get exception;
  @JsonKey(ignore: true)
  $UsersStateFailureCopyWith<UsersStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
