
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_pod.freezed.dart';
part 'company_pod.g.dart';

@freezed
class Company with _$Company {
  factory Company({
    required String name,
    required String catchPhrase,
    required String bs,
}) = CompanyPod;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}