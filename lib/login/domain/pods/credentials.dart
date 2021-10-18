import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.g.dart';

@JsonSerializable()
@immutable
class Credentials {
  const Credentials({required this.email, required this.password});

  factory Credentials.fromJson(Map<String, dynamic> json) => _$CredentialsFromJson(json);

  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);

  @override
  int get hashCode => hashValues(email, password);

  @override
  String toString() => 'Credentials: {email:$email, password:$password}';

  @override
  bool operator ==(Object other) {
    return identical(other, this) || other is Credentials && other.email == email && other.password == password;
  }
}

class NullCredentials implements Credentials {
  const NullCredentials();

  @override
  String get email => '';

  @override
  String get password => '';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'email': '', 'password': ''};
}
