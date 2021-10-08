// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_pod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddresPod _$$AddresPodFromJson(Map<String, dynamic> json) => _$AddresPod(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddresPodToJson(_$AddresPod instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
