import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_error.freezed.dart';

@freezed
class LoginError with _$LoginError {
  const factory LoginError.invalidCredentials() = LoginErrorInvalidCredentials;
}