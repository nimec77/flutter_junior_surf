import 'package:flutter_junior_surf/login/data/pods/geo_pod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_pod.freezed.dart';
part 'address_pod.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required Geo geo,
  }) = AddresPod;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
