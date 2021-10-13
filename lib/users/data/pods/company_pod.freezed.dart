// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_pod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return CompanyPod.fromJson(json);
}

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

  CompanyPod call(
      {required String name, required String catchPhrase, required String bs}) {
    return CompanyPod(
      name: name,
      catchPhrase: catchPhrase,
      bs: bs,
    );
  }

  Company fromJson(Map<String, Object?> json) {
    return Company.fromJson(json);
  }
}

/// @nodoc
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  String get name => throw _privateConstructorUsedError;
  String get catchPhrase => throw _privateConstructorUsedError;
  String get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $CompanyPodCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory $CompanyPodCopyWith(
          CompanyPod value, $Res Function(CompanyPod) then) =
      _$CompanyPodCopyWithImpl<$Res>;
  @override
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class _$CompanyPodCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements $CompanyPodCopyWith<$Res> {
  _$CompanyPodCopyWithImpl(CompanyPod _value, $Res Function(CompanyPod) _then)
      : super(_value, (v) => _then(v as CompanyPod));

  @override
  CompanyPod get _value => super._value as CompanyPod;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(CompanyPod(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyPod implements CompanyPod {
  _$CompanyPod(
      {required this.name, required this.catchPhrase, required this.bs});

  factory _$CompanyPod.fromJson(Map<String, dynamic> json) =>
      _$$CompanyPodFromJson(json);

  @override
  final String name;
  @override
  final String catchPhrase;
  @override
  final String bs;

  @override
  String toString() {
    return 'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyPod &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  $CompanyPodCopyWith<CompanyPod> get copyWith =>
      _$CompanyPodCopyWithImpl<CompanyPod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyPodToJson(this);
  }
}

abstract class CompanyPod implements Company {
  factory CompanyPod(
      {required String name,
      required String catchPhrase,
      required String bs}) = _$CompanyPod;

  factory CompanyPod.fromJson(Map<String, dynamic> json) =
      _$CompanyPod.fromJson;

  @override
  String get name;
  @override
  String get catchPhrase;
  @override
  String get bs;
  @override
  @JsonKey(ignore: true)
  $CompanyPodCopyWith<CompanyPod> get copyWith =>
      throw _privateConstructorUsedError;
}
