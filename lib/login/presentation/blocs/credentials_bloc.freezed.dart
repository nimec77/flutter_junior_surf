// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credentials_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialsEventTearOff {
  const _$CredentialsEventTearOff();

  CredentialsEventLoaded loaded() {
    return const CredentialsEventLoaded();
  }
}

/// @nodoc
const $CredentialsEvent = _$CredentialsEventTearOff();

/// @nodoc
mixin _$CredentialsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsEventLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsEventCopyWith<$Res> {
  factory $CredentialsEventCopyWith(
          CredentialsEvent value, $Res Function(CredentialsEvent) then) =
      _$CredentialsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsEventCopyWithImpl<$Res>
    implements $CredentialsEventCopyWith<$Res> {
  _$CredentialsEventCopyWithImpl(this._value, this._then);

  final CredentialsEvent _value;
  // ignore: unused_field
  final $Res Function(CredentialsEvent) _then;
}

/// @nodoc
abstract class $CredentialsEventLoadedCopyWith<$Res> {
  factory $CredentialsEventLoadedCopyWith(CredentialsEventLoaded value,
          $Res Function(CredentialsEventLoaded) then) =
      _$CredentialsEventLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsEventLoadedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements $CredentialsEventLoadedCopyWith<$Res> {
  _$CredentialsEventLoadedCopyWithImpl(CredentialsEventLoaded _value,
      $Res Function(CredentialsEventLoaded) _then)
      : super(_value, (v) => _then(v as CredentialsEventLoaded));

  @override
  CredentialsEventLoaded get _value => super._value as CredentialsEventLoaded;
}

/// @nodoc

class _$CredentialsEventLoaded implements CredentialsEventLoaded {
  const _$CredentialsEventLoaded();

  @override
  String toString() {
    return 'CredentialsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CredentialsEventLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsEventLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CredentialsEventLoaded implements CredentialsEvent {
  const factory CredentialsEventLoaded() = _$CredentialsEventLoaded;
}

/// @nodoc
class _$CredentialsStateTearOff {
  const _$CredentialsStateTearOff();

  CredentialsStateInit init() {
    return const CredentialsStateInit();
  }

  CredentialsStateLoadSuccess loadSuccess(Credentials credentials) {
    return CredentialsStateLoadSuccess(
      credentials,
    );
  }

  CredentialsStateLoadFailure loadFailure(Error error) {
    return CredentialsStateLoadFailure(
      error,
    );
  }
}

/// @nodoc
const $CredentialsState = _$CredentialsStateTearOff();

/// @nodoc
mixin _$CredentialsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateInit value) init,
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsStateCopyWith<$Res> {
  factory $CredentialsStateCopyWith(
          CredentialsState value, $Res Function(CredentialsState) then) =
      _$CredentialsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateCopyWith<$Res> {
  _$CredentialsStateCopyWithImpl(this._value, this._then);

  final CredentialsState _value;
  // ignore: unused_field
  final $Res Function(CredentialsState) _then;
}

/// @nodoc
abstract class $CredentialsStateInitCopyWith<$Res> {
  factory $CredentialsStateInitCopyWith(CredentialsStateInit value,
          $Res Function(CredentialsStateInit) then) =
      _$CredentialsStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsStateInitCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateInitCopyWith<$Res> {
  _$CredentialsStateInitCopyWithImpl(
      CredentialsStateInit _value, $Res Function(CredentialsStateInit) _then)
      : super(_value, (v) => _then(v as CredentialsStateInit));

  @override
  CredentialsStateInit get _value => super._value as CredentialsStateInit;
}

/// @nodoc

class _$CredentialsStateInit implements CredentialsStateInit {
  const _$CredentialsStateInit();

  @override
  String toString() {
    return 'CredentialsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CredentialsStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
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
    required TResult Function(CredentialsStateInit value) init,
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateInit implements CredentialsState {
  const factory CredentialsStateInit() = _$CredentialsStateInit;
}

/// @nodoc
abstract class $CredentialsStateLoadSuccessCopyWith<$Res> {
  factory $CredentialsStateLoadSuccessCopyWith(
          CredentialsStateLoadSuccess value,
          $Res Function(CredentialsStateLoadSuccess) then) =
      _$CredentialsStateLoadSuccessCopyWithImpl<$Res>;
  $Res call({Credentials credentials});
}

/// @nodoc
class _$CredentialsStateLoadSuccessCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateLoadSuccessCopyWith<$Res> {
  _$CredentialsStateLoadSuccessCopyWithImpl(CredentialsStateLoadSuccess _value,
      $Res Function(CredentialsStateLoadSuccess) _then)
      : super(_value, (v) => _then(v as CredentialsStateLoadSuccess));

  @override
  CredentialsStateLoadSuccess get _value =>
      super._value as CredentialsStateLoadSuccess;

  @override
  $Res call({
    Object? credentials = freezed,
  }) {
    return _then(CredentialsStateLoadSuccess(
      credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
    ));
  }
}

/// @nodoc

class _$CredentialsStateLoadSuccess implements CredentialsStateLoadSuccess {
  const _$CredentialsStateLoadSuccess(this.credentials);

  @override
  final Credentials credentials;

  @override
  String toString() {
    return 'CredentialsState.loadSuccess(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsStateLoadSuccess &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  $CredentialsStateLoadSuccessCopyWith<CredentialsStateLoadSuccess>
      get copyWith => _$CredentialsStateLoadSuccessCopyWithImpl<
          CredentialsStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
  }) {
    return loadSuccess(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
  }) {
    return loadSuccess?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateInit value) init,
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateLoadSuccess implements CredentialsState {
  const factory CredentialsStateLoadSuccess(Credentials credentials) =
      _$CredentialsStateLoadSuccess;

  Credentials get credentials;
  @JsonKey(ignore: true)
  $CredentialsStateLoadSuccessCopyWith<CredentialsStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsStateLoadFailureCopyWith<$Res> {
  factory $CredentialsStateLoadFailureCopyWith(
          CredentialsStateLoadFailure value,
          $Res Function(CredentialsStateLoadFailure) then) =
      _$CredentialsStateLoadFailureCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$CredentialsStateLoadFailureCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateLoadFailureCopyWith<$Res> {
  _$CredentialsStateLoadFailureCopyWithImpl(CredentialsStateLoadFailure _value,
      $Res Function(CredentialsStateLoadFailure) _then)
      : super(_value, (v) => _then(v as CredentialsStateLoadFailure));

  @override
  CredentialsStateLoadFailure get _value =>
      super._value as CredentialsStateLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialsStateLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialsStateLoadFailure implements CredentialsStateLoadFailure {
  const _$CredentialsStateLoadFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialsState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsStateLoadFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $CredentialsStateLoadFailureCopyWith<CredentialsStateLoadFailure>
      get copyWith => _$CredentialsStateLoadFailureCopyWithImpl<
          CredentialsStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateInit value) init,
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateInit value)? init,
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateLoadFailure implements CredentialsState {
  const factory CredentialsStateLoadFailure(Error error) =
      _$CredentialsStateLoadFailure;

  Error get error;
  @JsonKey(ignore: true)
  $CredentialsStateLoadFailureCopyWith<CredentialsStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
