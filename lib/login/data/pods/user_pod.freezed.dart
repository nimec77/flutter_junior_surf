// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_pod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPod _$UserPodFromJson(Map<String, dynamic> json) {
  return UserPodDefault.fromJson(json);
}

/// @nodoc
class _$UserPodTearOff {
  const _$UserPodTearOff();

  UserPodDefault call(
      {required int id,
      required String username,
      required String email,
      required Address address,
      required String phone,
      required String website,
      required Company company}) {
    return UserPodDefault(
      id: id,
      username: username,
      email: email,
      address: address,
      phone: phone,
      website: website,
      company: company,
    );
  }

  UserPod fromJson(Map<String, Object> json) {
    return UserPod.fromJson(json);
  }
}

/// @nodoc
const $UserPod = _$UserPodTearOff();

/// @nodoc
mixin _$UserPod {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  Company get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPodCopyWith<UserPod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPodCopyWith<$Res> {
  factory $UserPodCopyWith(UserPod value, $Res Function(UserPod) then) =
      _$UserPodCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String email,
      Address address,
      String phone,
      String website,
      Company company});

  $AddressCopyWith<$Res> get address;
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$UserPodCopyWithImpl<$Res> implements $UserPodCopyWith<$Res> {
  _$UserPodCopyWithImpl(this._value, this._then);

  final UserPod _value;
  // ignore: unused_field
  final $Res Function(UserPod) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class $UserPodDefaultCopyWith<$Res> implements $UserPodCopyWith<$Res> {
  factory $UserPodDefaultCopyWith(
          UserPodDefault value, $Res Function(UserPodDefault) then) =
      _$UserPodDefaultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String email,
      Address address,
      String phone,
      String website,
      Company company});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$UserPodDefaultCopyWithImpl<$Res> extends _$UserPodCopyWithImpl<$Res>
    implements $UserPodDefaultCopyWith<$Res> {
  _$UserPodDefaultCopyWithImpl(
      UserPodDefault _value, $Res Function(UserPodDefault) _then)
      : super(_value, (v) => _then(v as UserPodDefault));

  @override
  UserPodDefault get _value => super._value as UserPodDefault;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(UserPodDefault(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPodDefault implements UserPodDefault {
  const _$UserPodDefault(
      {required this.id,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory _$UserPodDefault.fromJson(Map<String, dynamic> json) =>
      _$$UserPodDefaultFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final Address address;
  @override
  final String phone;
  @override
  final String website;
  @override
  final Company company;

  @override
  String toString() {
    return 'UserPod(id: $id, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPodDefault &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(company);

  @JsonKey(ignore: true)
  @override
  $UserPodDefaultCopyWith<UserPodDefault> get copyWith =>
      _$UserPodDefaultCopyWithImpl<UserPodDefault>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPodDefaultToJson(this);
  }
}

abstract class UserPodDefault implements UserPod {
  const factory UserPodDefault(
      {required int id,
      required String username,
      required String email,
      required Address address,
      required String phone,
      required String website,
      required Company company}) = _$UserPodDefault;

  factory UserPodDefault.fromJson(Map<String, dynamic> json) =
      _$UserPodDefault.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get website => throw _privateConstructorUsedError;
  @override
  Company get company => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserPodDefaultCopyWith<UserPodDefault> get copyWith =>
      throw _privateConstructorUsedError;
}
