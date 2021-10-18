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

  CredentialsEventSaved saved(Credentials credentials) {
    return CredentialsEventSaved(
      credentials,
    );
  }
}

/// @nodoc
const $CredentialsEvent = _$CredentialsEventTearOff();

/// @nodoc
mixin _$CredentialsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(Credentials credentials) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsEventLoaded value) loaded,
    required TResult Function(CredentialsEventSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
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
    required TResult Function(Credentials credentials) saved,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
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
    required TResult Function(CredentialsEventSaved value) saved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
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
abstract class $CredentialsEventSavedCopyWith<$Res> {
  factory $CredentialsEventSavedCopyWith(CredentialsEventSaved value,
          $Res Function(CredentialsEventSaved) then) =
      _$CredentialsEventSavedCopyWithImpl<$Res>;
  $Res call({Credentials credentials});
}

/// @nodoc
class _$CredentialsEventSavedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements $CredentialsEventSavedCopyWith<$Res> {
  _$CredentialsEventSavedCopyWithImpl(
      CredentialsEventSaved _value, $Res Function(CredentialsEventSaved) _then)
      : super(_value, (v) => _then(v as CredentialsEventSaved));

  @override
  CredentialsEventSaved get _value => super._value as CredentialsEventSaved;

  @override
  $Res call({
    Object? credentials = freezed,
  }) {
    return _then(CredentialsEventSaved(
      credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
    ));
  }
}

/// @nodoc

class _$CredentialsEventSaved implements CredentialsEventSaved {
  const _$CredentialsEventSaved(this.credentials);

  @override
  final Credentials credentials;

  @override
  String toString() {
    return 'CredentialsEvent.saved(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsEventSaved &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  $CredentialsEventSavedCopyWith<CredentialsEventSaved> get copyWith =>
      _$CredentialsEventSavedCopyWithImpl<CredentialsEventSaved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(Credentials credentials) saved,
  }) {
    return saved(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
  }) {
    return saved?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(Credentials credentials)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsEventLoaded value) loaded,
    required TResult Function(CredentialsEventSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsEventLoaded value)? loaded,
    TResult Function(CredentialsEventSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class CredentialsEventSaved implements CredentialsEvent {
  const factory CredentialsEventSaved(Credentials credentials) =
      _$CredentialsEventSaved;

  Credentials get credentials;
  @JsonKey(ignore: true)
  $CredentialsEventSavedCopyWith<CredentialsEventSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CredentialsStateTearOff {
  const _$CredentialsStateTearOff();

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

  CredentialsStateInProgress saveInProgress() {
    return const CredentialsStateInProgress();
  }

  CredentialsStateSaveSuccess saveSuccess() {
    return const CredentialsStateSaveSuccess();
  }

  CredentialsStateSaveFailure saveFailure(Error error) {
    return CredentialsStateSaveFailure(
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
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
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
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) {
    return loadSuccess(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) {
    return loadSuccess?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
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
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
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
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
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
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
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

/// @nodoc
abstract class $CredentialsStateInProgressCopyWith<$Res> {
  factory $CredentialsStateInProgressCopyWith(CredentialsStateInProgress value,
          $Res Function(CredentialsStateInProgress) then) =
      _$CredentialsStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsStateInProgressCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateInProgressCopyWith<$Res> {
  _$CredentialsStateInProgressCopyWithImpl(CredentialsStateInProgress _value,
      $Res Function(CredentialsStateInProgress) _then)
      : super(_value, (v) => _then(v as CredentialsStateInProgress));

  @override
  CredentialsStateInProgress get _value =>
      super._value as CredentialsStateInProgress;
}

/// @nodoc

class _$CredentialsStateInProgress implements CredentialsStateInProgress {
  const _$CredentialsStateInProgress();

  @override
  String toString() {
    return 'CredentialsState.saveInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) {
    return saveInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) {
    return saveInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) {
    return saveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) {
    return saveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateInProgress implements CredentialsState {
  const factory CredentialsStateInProgress() = _$CredentialsStateInProgress;
}

/// @nodoc
abstract class $CredentialsStateSaveSuccessCopyWith<$Res> {
  factory $CredentialsStateSaveSuccessCopyWith(
          CredentialsStateSaveSuccess value,
          $Res Function(CredentialsStateSaveSuccess) then) =
      _$CredentialsStateSaveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsStateSaveSuccessCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateSaveSuccessCopyWith<$Res> {
  _$CredentialsStateSaveSuccessCopyWithImpl(CredentialsStateSaveSuccess _value,
      $Res Function(CredentialsStateSaveSuccess) _then)
      : super(_value, (v) => _then(v as CredentialsStateSaveSuccess));

  @override
  CredentialsStateSaveSuccess get _value =>
      super._value as CredentialsStateSaveSuccess;
}

/// @nodoc

class _$CredentialsStateSaveSuccess implements CredentialsStateSaveSuccess {
  const _$CredentialsStateSaveSuccess();

  @override
  String toString() {
    return 'CredentialsState.saveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsStateSaveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateSaveSuccess implements CredentialsState {
  const factory CredentialsStateSaveSuccess() = _$CredentialsStateSaveSuccess;
}

/// @nodoc
abstract class $CredentialsStateSaveFailureCopyWith<$Res> {
  factory $CredentialsStateSaveFailureCopyWith(
          CredentialsStateSaveFailure value,
          $Res Function(CredentialsStateSaveFailure) then) =
      _$CredentialsStateSaveFailureCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$CredentialsStateSaveFailureCopyWithImpl<$Res>
    extends _$CredentialsStateCopyWithImpl<$Res>
    implements $CredentialsStateSaveFailureCopyWith<$Res> {
  _$CredentialsStateSaveFailureCopyWithImpl(CredentialsStateSaveFailure _value,
      $Res Function(CredentialsStateSaveFailure) _then)
      : super(_value, (v) => _then(v as CredentialsStateSaveFailure));

  @override
  CredentialsStateSaveFailure get _value =>
      super._value as CredentialsStateSaveFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialsStateSaveFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialsStateSaveFailure implements CredentialsStateSaveFailure {
  const _$CredentialsStateSaveFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialsState.saveFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsStateSaveFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $CredentialsStateSaveFailureCopyWith<CredentialsStateSaveFailure>
      get copyWith => _$CredentialsStateSaveFailureCopyWithImpl<
          CredentialsStateSaveFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Credentials credentials) loadSuccess,
    required TResult Function(Error error) loadFailure,
    required TResult Function() saveInProgress,
    required TResult Function() saveSuccess,
    required TResult Function(Error error) saveFailure,
  }) {
    return saveFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
  }) {
    return saveFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Credentials credentials)? loadSuccess,
    TResult Function(Error error)? loadFailure,
    TResult Function()? saveInProgress,
    TResult Function()? saveSuccess,
    TResult Function(Error error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialsStateLoadSuccess value) loadSuccess,
    required TResult Function(CredentialsStateLoadFailure value) loadFailure,
    required TResult Function(CredentialsStateInProgress value) saveInProgress,
    required TResult Function(CredentialsStateSaveSuccess value) saveSuccess,
    required TResult Function(CredentialsStateSaveFailure value) saveFailure,
  }) {
    return saveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
  }) {
    return saveFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialsStateLoadSuccess value)? loadSuccess,
    TResult Function(CredentialsStateLoadFailure value)? loadFailure,
    TResult Function(CredentialsStateInProgress value)? saveInProgress,
    TResult Function(CredentialsStateSaveSuccess value)? saveSuccess,
    TResult Function(CredentialsStateSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(this);
    }
    return orElse();
  }
}

abstract class CredentialsStateSaveFailure implements CredentialsState {
  const factory CredentialsStateSaveFailure(Error error) =
      _$CredentialsStateSaveFailure;

  Error get error;
  @JsonKey(ignore: true)
  $CredentialsStateSaveFailureCopyWith<CredentialsStateSaveFailure>
      get copyWith => throw _privateConstructorUsedError;
}
