// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_pod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Geo _$GeoFromJson(Map<String, dynamic> json) {
  return GeoPod.fromJson(json);
}

/// @nodoc
class _$GeoTearOff {
  const _$GeoTearOff();

  GeoPod call({required String lat, required String lng}) {
    return GeoPod(
      lat: lat,
      lng: lng,
    );
  }

  Geo fromJson(Map<String, Object?> json) {
    return Geo.fromJson(json);
  }
}

/// @nodoc
const $Geo = _$GeoTearOff();

/// @nodoc
mixin _$Geo {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCopyWith<Geo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) then) =
      _$GeoCopyWithImpl<$Res>;
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._value, this._then);

  final Geo _value;
  // ignore: unused_field
  final $Res Function(Geo) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GeoPodCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory $GeoPodCopyWith(GeoPod value, $Res Function(GeoPod) then) =
      _$GeoPodCopyWithImpl<$Res>;
  @override
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoPodCopyWithImpl<$Res> extends _$GeoCopyWithImpl<$Res>
    implements $GeoPodCopyWith<$Res> {
  _$GeoPodCopyWithImpl(GeoPod _value, $Res Function(GeoPod) _then)
      : super(_value, (v) => _then(v as GeoPod));

  @override
  GeoPod get _value => super._value as GeoPod;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(GeoPod(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoPod implements GeoPod {
  const _$GeoPod({required this.lat, required this.lng});

  factory _$GeoPod.fromJson(Map<String, dynamic> json) =>
      _$$GeoPodFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'Geo(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeoPod &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  $GeoPodCopyWith<GeoPod> get copyWith =>
      _$GeoPodCopyWithImpl<GeoPod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoPodToJson(this);
  }
}

abstract class GeoPod implements Geo {
  const factory GeoPod({required String lat, required String lng}) = _$GeoPod;

  factory GeoPod.fromJson(Map<String, dynamic> json) = _$GeoPod.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  $GeoPodCopyWith<GeoPod> get copyWith => throw _privateConstructorUsedError;
}
