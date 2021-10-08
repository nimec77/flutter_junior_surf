// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPodDefault _$$UserPodDefaultFromJson(Map<String, dynamic> json) =>
    _$UserPodDefault(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserPodDefaultToJson(_$UserPodDefault instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
