import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.g.dart';

@JsonSerializable()
@immutable
class Credentials {
  final String email;
  final String password;

  @override
  int get hashCode => hashValues(email, password);

  const Credentials({required this.email, required this.password});

  factory Credentials.fromJson(Map<String, dynamic> json) => _$CredentialsFromJson(json);

  @override
  String toString() => 'Credentials: {email:$email, password:$password}';

  @override
  bool operator ==(Object other) {
    return identical(other, this) || other is Credentials && other.email == email && other.password == password;
  }


  Map<String, dynamic> toJson() => _$CredentialsToJson(this);

}

//ignore: avoid_implementing_value_types
class NullCredentials implements Credentials {
  @override
  String get email => '';

  @override
  String get password => '';

  const NullCredentials();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'email': '', 'password': ''};
}
