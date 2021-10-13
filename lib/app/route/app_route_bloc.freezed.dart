// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppRouteEventTearOff {
  const _$AppRouteEventTearOff();

  AppRouteEventToLogin toLogin() {
    return const AppRouteEventToLogin();
  }

  AppRouteEventToUsers toUsers() {
    return const AppRouteEventToUsers();
  }
}

/// @nodoc
const $AppRouteEvent = _$AppRouteEventTearOff();

/// @nodoc
mixin _$AppRouteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function() toUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteEventToLogin value) toLogin,
    required TResult Function(AppRouteEventToUsers value) toUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRouteEventCopyWith<$Res> {
  factory $AppRouteEventCopyWith(
          AppRouteEvent value, $Res Function(AppRouteEvent) then) =
      _$AppRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteEventCopyWithImpl<$Res>
    implements $AppRouteEventCopyWith<$Res> {
  _$AppRouteEventCopyWithImpl(this._value, this._then);

  final AppRouteEvent _value;
  // ignore: unused_field
  final $Res Function(AppRouteEvent) _then;
}

/// @nodoc
abstract class $AppRouteEventToLoginCopyWith<$Res> {
  factory $AppRouteEventToLoginCopyWith(AppRouteEventToLogin value,
          $Res Function(AppRouteEventToLogin) then) =
      _$AppRouteEventToLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteEventToLoginCopyWithImpl<$Res>
    extends _$AppRouteEventCopyWithImpl<$Res>
    implements $AppRouteEventToLoginCopyWith<$Res> {
  _$AppRouteEventToLoginCopyWithImpl(
      AppRouteEventToLogin _value, $Res Function(AppRouteEventToLogin) _then)
      : super(_value, (v) => _then(v as AppRouteEventToLogin));

  @override
  AppRouteEventToLogin get _value => super._value as AppRouteEventToLogin;
}

/// @nodoc

class _$AppRouteEventToLogin implements AppRouteEventToLogin {
  const _$AppRouteEventToLogin();

  @override
  String toString() {
    return 'AppRouteEvent.toLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppRouteEventToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function() toUsers,
  }) {
    return toLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
  }) {
    return toLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
    required TResult orElse(),
  }) {
    if (toLogin != null) {
      return toLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteEventToLogin value) toLogin,
    required TResult Function(AppRouteEventToUsers value) toUsers,
  }) {
    return toLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
  }) {
    return toLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
    required TResult orElse(),
  }) {
    if (toLogin != null) {
      return toLogin(this);
    }
    return orElse();
  }
}

abstract class AppRouteEventToLogin implements AppRouteEvent {
  const factory AppRouteEventToLogin() = _$AppRouteEventToLogin;
}

/// @nodoc
abstract class $AppRouteEventToUsersCopyWith<$Res> {
  factory $AppRouteEventToUsersCopyWith(AppRouteEventToUsers value,
          $Res Function(AppRouteEventToUsers) then) =
      _$AppRouteEventToUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteEventToUsersCopyWithImpl<$Res>
    extends _$AppRouteEventCopyWithImpl<$Res>
    implements $AppRouteEventToUsersCopyWith<$Res> {
  _$AppRouteEventToUsersCopyWithImpl(
      AppRouteEventToUsers _value, $Res Function(AppRouteEventToUsers) _then)
      : super(_value, (v) => _then(v as AppRouteEventToUsers));

  @override
  AppRouteEventToUsers get _value => super._value as AppRouteEventToUsers;
}

/// @nodoc

class _$AppRouteEventToUsers implements AppRouteEventToUsers {
  const _$AppRouteEventToUsers();

  @override
  String toString() {
    return 'AppRouteEvent.toUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppRouteEventToUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function() toUsers,
  }) {
    return toUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
  }) {
    return toUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function()? toUsers,
    required TResult orElse(),
  }) {
    if (toUsers != null) {
      return toUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteEventToLogin value) toLogin,
    required TResult Function(AppRouteEventToUsers value) toUsers,
  }) {
    return toUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
  }) {
    return toUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteEventToLogin value)? toLogin,
    TResult Function(AppRouteEventToUsers value)? toUsers,
    required TResult orElse(),
  }) {
    if (toUsers != null) {
      return toUsers(this);
    }
    return orElse();
  }
}

abstract class AppRouteEventToUsers implements AppRouteEvent {
  const factory AppRouteEventToUsers() = _$AppRouteEventToUsers;
}

/// @nodoc
class _$AppRouteStateTearOff {
  const _$AppRouteStateTearOff();

  AppRouteStateLogin login() {
    return const AppRouteStateLogin();
  }

  AppRouteStateUsers users() {
    return const AppRouteStateUsers();
  }
}

/// @nodoc
const $AppRouteState = _$AppRouteStateTearOff();

/// @nodoc
mixin _$AppRouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteStateLogin value) login,
    required TResult Function(AppRouteStateUsers value) users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRouteStateCopyWith<$Res> {
  factory $AppRouteStateCopyWith(
          AppRouteState value, $Res Function(AppRouteState) then) =
      _$AppRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteStateCopyWithImpl<$Res>
    implements $AppRouteStateCopyWith<$Res> {
  _$AppRouteStateCopyWithImpl(this._value, this._then);

  final AppRouteState _value;
  // ignore: unused_field
  final $Res Function(AppRouteState) _then;
}

/// @nodoc
abstract class $AppRouteStateLoginCopyWith<$Res> {
  factory $AppRouteStateLoginCopyWith(
          AppRouteStateLogin value, $Res Function(AppRouteStateLogin) then) =
      _$AppRouteStateLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteStateLoginCopyWithImpl<$Res>
    extends _$AppRouteStateCopyWithImpl<$Res>
    implements $AppRouteStateLoginCopyWith<$Res> {
  _$AppRouteStateLoginCopyWithImpl(
      AppRouteStateLogin _value, $Res Function(AppRouteStateLogin) _then)
      : super(_value, (v) => _then(v as AppRouteStateLogin));

  @override
  AppRouteStateLogin get _value => super._value as AppRouteStateLogin;
}

/// @nodoc

class _$AppRouteStateLogin implements AppRouteStateLogin {
  const _$AppRouteStateLogin();

  @override
  String toString() {
    return 'AppRouteState.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppRouteStateLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() users,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteStateLogin value) login,
    required TResult Function(AppRouteStateUsers value) users,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AppRouteStateLogin implements AppRouteState {
  const factory AppRouteStateLogin() = _$AppRouteStateLogin;
}

/// @nodoc
abstract class $AppRouteStateUsersCopyWith<$Res> {
  factory $AppRouteStateUsersCopyWith(
          AppRouteStateUsers value, $Res Function(AppRouteStateUsers) then) =
      _$AppRouteStateUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteStateUsersCopyWithImpl<$Res>
    extends _$AppRouteStateCopyWithImpl<$Res>
    implements $AppRouteStateUsersCopyWith<$Res> {
  _$AppRouteStateUsersCopyWithImpl(
      AppRouteStateUsers _value, $Res Function(AppRouteStateUsers) _then)
      : super(_value, (v) => _then(v as AppRouteStateUsers));

  @override
  AppRouteStateUsers get _value => super._value as AppRouteStateUsers;
}

/// @nodoc

class _$AppRouteStateUsers implements AppRouteStateUsers {
  const _$AppRouteStateUsers();

  @override
  String toString() {
    return 'AppRouteState.users()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppRouteStateUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() users,
  }) {
    return users();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
  }) {
    return users?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? users,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRouteStateLogin value) login,
    required TResult Function(AppRouteStateUsers value) users,
  }) {
    return users(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
  }) {
    return users?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRouteStateLogin value)? login,
    TResult Function(AppRouteStateUsers value)? users,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users(this);
    }
    return orElse();
  }
}

abstract class AppRouteStateUsers implements AppRouteState {
  const factory AppRouteStateUsers() = _$AppRouteStateUsers;
}
