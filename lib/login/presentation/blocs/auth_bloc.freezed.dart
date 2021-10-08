// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventLoginStated loginStarted(Credentials credentials) {
    return AuthEventLoginStated(
      credentials,
    );
  }

  AuthEventLoggedIn loggedIn() {
    return const AuthEventLoggedIn();
  }

  AuthEventLogout logout() {
    return const AuthEventLogout();
  }

  AuthEventLoggedOut loggedOut() {
    return const AuthEventLoggedOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loginStarted,
    required TResult Function() loggedIn,
    required TResult Function() logout,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStated value) loginStarted,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthEventLoginStatedCopyWith<$Res> {
  factory $AuthEventLoginStatedCopyWith(AuthEventLoginStated value,
          $Res Function(AuthEventLoginStated) then) =
      _$AuthEventLoginStatedCopyWithImpl<$Res>;
  $Res call({Credentials credentials});
}

/// @nodoc
class _$AuthEventLoginStatedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginStatedCopyWith<$Res> {
  _$AuthEventLoginStatedCopyWithImpl(
      AuthEventLoginStated _value, $Res Function(AuthEventLoginStated) _then)
      : super(_value, (v) => _then(v as AuthEventLoginStated));

  @override
  AuthEventLoginStated get _value => super._value as AuthEventLoginStated;

  @override
  $Res call({
    Object? credentials = freezed,
  }) {
    return _then(AuthEventLoginStated(
      credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginStated implements AuthEventLoginStated {
  const _$AuthEventLoginStated(this.credentials);

  @override
  final Credentials credentials;

  @override
  String toString() {
    return 'AuthEvent.loginStarted(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthEventLoginStated &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credentials);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginStatedCopyWith<AuthEventLoginStated> get copyWith =>
      _$AuthEventLoginStatedCopyWithImpl<AuthEventLoginStated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loginStarted,
    required TResult Function() loggedIn,
    required TResult Function() logout,
    required TResult Function() loggedOut,
  }) {
    return loginStarted(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
  }) {
    return loginStarted?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStated value) loginStarted,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
  }) {
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
  }) {
    return loginStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginStated implements AuthEvent {
  const factory AuthEventLoginStated(Credentials credentials) =
      _$AuthEventLoginStated;

  Credentials get credentials => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEventLoginStatedCopyWith<AuthEventLoginStated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoggedInCopyWith<$Res> {
  factory $AuthEventLoggedInCopyWith(
          AuthEventLoggedIn value, $Res Function(AuthEventLoggedIn) then) =
      _$AuthEventLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoggedInCopyWith<$Res> {
  _$AuthEventLoggedInCopyWithImpl(
      AuthEventLoggedIn _value, $Res Function(AuthEventLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthEventLoggedIn));

  @override
  AuthEventLoggedIn get _value => super._value as AuthEventLoggedIn;
}

/// @nodoc

class _$AuthEventLoggedIn implements AuthEventLoggedIn {
  const _$AuthEventLoggedIn();

  @override
  String toString() {
    return 'AuthEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loginStarted,
    required TResult Function() loggedIn,
    required TResult Function() logout,
    required TResult Function() loggedOut,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStated value) loginStarted,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoggedIn implements AuthEvent {
  const factory AuthEventLoggedIn() = _$AuthEventLoggedIn;
}

/// @nodoc
abstract class $AuthEventLogoutCopyWith<$Res> {
  factory $AuthEventLogoutCopyWith(
          AuthEventLogout value, $Res Function(AuthEventLogout) then) =
      _$AuthEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutCopyWith<$Res> {
  _$AuthEventLogoutCopyWithImpl(
      AuthEventLogout _value, $Res Function(AuthEventLogout) _then)
      : super(_value, (v) => _then(v as AuthEventLogout));

  @override
  AuthEventLogout get _value => super._value as AuthEventLogout;
}

/// @nodoc

class _$AuthEventLogout implements AuthEventLogout {
  const _$AuthEventLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loginStarted,
    required TResult Function() loggedIn,
    required TResult Function() logout,
    required TResult Function() loggedOut,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStated value) loginStarted,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogout;
}

/// @nodoc
abstract class $AuthEventLoggedOutCopyWith<$Res> {
  factory $AuthEventLoggedOutCopyWith(
          AuthEventLoggedOut value, $Res Function(AuthEventLoggedOut) then) =
      _$AuthEventLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoggedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoggedOutCopyWith<$Res> {
  _$AuthEventLoggedOutCopyWithImpl(
      AuthEventLoggedOut _value, $Res Function(AuthEventLoggedOut) _then)
      : super(_value, (v) => _then(v as AuthEventLoggedOut));

  @override
  AuthEventLoggedOut get _value => super._value as AuthEventLoggedOut;
}

/// @nodoc

class _$AuthEventLoggedOut implements AuthEventLoggedOut {
  const _$AuthEventLoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loginStarted,
    required TResult Function() loggedIn,
    required TResult Function() logout,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loginStarted,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStated value) loginStarted,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStated value)? loginStarted,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoggedOut implements AuthEvent {
  const factory AuthEventLoggedOut() = _$AuthEventLoggedOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateNotAuthorized notAuthorized() {
    return const AuthStateNotAuthorized();
  }

  AuthStateInProgress inProgress() {
    return const AuthStateInProgress();
  }

  AuthStateSuccess success() {
    return const AuthStateSuccess();
  }

  AuthStateFailed failed(Error error) {
    return AuthStateFailed(
      error,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(Error error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthStateInProgress value) inProgress,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateNotAuthorizedCopyWith<$Res> {
  factory $AuthStateNotAuthorizedCopyWith(AuthStateNotAuthorized value,
          $Res Function(AuthStateNotAuthorized) then) =
      _$AuthStateNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNotAuthorizedCopyWith<$Res> {
  _$AuthStateNotAuthorizedCopyWithImpl(AuthStateNotAuthorized _value,
      $Res Function(AuthStateNotAuthorized) _then)
      : super(_value, (v) => _then(v as AuthStateNotAuthorized));

  @override
  AuthStateNotAuthorized get _value => super._value as AuthStateNotAuthorized;
}

/// @nodoc

class _$AuthStateNotAuthorized implements AuthStateNotAuthorized {
  const _$AuthStateNotAuthorized();

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(Error error) failed,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthStateInProgress value) inProgress,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateFailed value) failed,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateNotAuthorized implements AuthState {
  const factory AuthStateNotAuthorized() = _$AuthStateNotAuthorized;
}

/// @nodoc
abstract class $AuthStateInProgressCopyWith<$Res> {
  factory $AuthStateInProgressCopyWith(
          AuthStateInProgress value, $Res Function(AuthStateInProgress) then) =
      _$AuthStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateInProgressCopyWith<$Res> {
  _$AuthStateInProgressCopyWithImpl(
      AuthStateInProgress _value, $Res Function(AuthStateInProgress) _then)
      : super(_value, (v) => _then(v as AuthStateInProgress));

  @override
  AuthStateInProgress get _value => super._value as AuthStateInProgress;
}

/// @nodoc

class _$AuthStateInProgress implements AuthStateInProgress {
  const _$AuthStateInProgress();

  @override
  String toString() {
    return 'AuthState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(Error error) failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
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
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthStateInProgress value) inProgress,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateFailed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class AuthStateInProgress implements AuthState {
  const factory AuthStateInProgress() = _$AuthStateInProgress;
}

/// @nodoc
abstract class $AuthStateSuccessCopyWith<$Res> {
  factory $AuthStateSuccessCopyWith(
          AuthStateSuccess value, $Res Function(AuthStateSuccess) then) =
      _$AuthStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSuccessCopyWith<$Res> {
  _$AuthStateSuccessCopyWithImpl(
      AuthStateSuccess _value, $Res Function(AuthStateSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateSuccess));

  @override
  AuthStateSuccess get _value => super._value as AuthStateSuccess;
}

/// @nodoc

class _$AuthStateSuccess implements AuthStateSuccess {
  const _$AuthStateSuccess();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(Error error) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthStateInProgress value) inProgress,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess() = _$AuthStateSuccess;
}

/// @nodoc
abstract class $AuthStateFailedCopyWith<$Res> {
  factory $AuthStateFailedCopyWith(
          AuthStateFailed value, $Res Function(AuthStateFailed) then) =
      _$AuthStateFailedCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$AuthStateFailedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateFailedCopyWith<$Res> {
  _$AuthStateFailedCopyWithImpl(
      AuthStateFailed _value, $Res Function(AuthStateFailed) _then)
      : super(_value, (v) => _then(v as AuthStateFailed));

  @override
  AuthStateFailed get _value => super._value as AuthStateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthStateFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$AuthStateFailed implements AuthStateFailed {
  const _$AuthStateFailed(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'AuthState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthStateFailedCopyWith<AuthStateFailed> get copyWith =>
      _$AuthStateFailedCopyWithImpl<AuthStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(Error error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthStateInProgress value) inProgress,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthStateInProgress value)? inProgress,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class AuthStateFailed implements AuthState {
  const factory AuthStateFailed(Error error) = _$AuthStateFailed;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateFailedCopyWith<AuthStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
