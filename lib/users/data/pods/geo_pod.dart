import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_pod.freezed.dart';
part 'geo_pod.g.dart';

@freezed
class Geo with _$Geo {
  const factory Geo({
    required String lat,
    required String lng,
}) = GeoPod;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}