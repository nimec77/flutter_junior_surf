import 'package:flutter_junior_surf/users/data/pods/address_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/company_pod.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_pod.freezed.dart';

part 'user_pod.g.dart';

@freezed
class UserPod with _$UserPod {
  const factory UserPod({
    required final int id,
    required final String username,
    required final String email,
    required final Address address,
    required final String phone,
    required final String website,
    required final Company company,
  }) = UserPodDefault;

  const UserPod._();

  factory UserPod.fromJson(Map<String, dynamic> json) => _$UserPodFromJson(json);

  User toUser() => User(
        username: username,
        email: email,
        companyName: company.name,
      );
}
