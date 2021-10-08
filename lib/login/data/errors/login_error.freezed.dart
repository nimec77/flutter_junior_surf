// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginErrorTearOff {
  const _$LoginErrorTearOff();

  LoginErrorInvalidCredentials invalidCredentials() {
    return const LoginErrorInvalidCredentials();
  }
}

/// @nodoc
const $LoginError = _$LoginErrorTearOff();

/// @nodoc
mixin _$LoginError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginErrorInvalidCredentials value)
        invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginErrorInvalidCredentials value)? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginErrorInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(this._value, this._then);

  final LoginError _value;
  // ignore: unused_field
  final $Res Function(LoginError) _then;
}

/// @nodoc
abstract class $LoginErrorInvalidCredentialsCopyWith<$Res> {
  factory $LoginErrorInvalidCredentialsCopyWith(
          LoginErrorInvalidCredentials value,
          $Res Function(LoginErrorInvalidCredentials) then) =
      _$LoginErrorInvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginErrorInvalidCredentialsCopyWithImpl<$Res>
    extends _$LoginErrorCopyWithImpl<$Res>
    implements $LoginErrorInvalidCredentialsCopyWith<$Res> {
  _$LoginErrorInvalidCredentialsCopyWithImpl(
      LoginErrorInvalidCredentials _value,
      $Res Function(LoginErrorInvalidCredentials) _then)
      : super(_value, (v) => _then(v as LoginErrorInvalidCredentials));

  @override
  LoginErrorInvalidCredentials get _value =>
      super._value as LoginErrorInvalidCredentials;
}

/// @nodoc

class _$LoginErrorInvalidCredentials implements LoginErrorInvalidCredentials {
  const _$LoginErrorInvalidCredentials();

  @override
  String toString() {
    return 'LoginError.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginErrorInvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidCredentials,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginErrorInvalidCredentials value)
        invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginErrorInvalidCredentials value)? invalidCredentials,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginErrorInvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class LoginErrorInvalidCredentials implements LoginError {
  const factory LoginErrorInvalidCredentials() = _$LoginErrorInvalidCredentials;
}
