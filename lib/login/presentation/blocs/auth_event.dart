part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted({
    required final String email,
    required final String password,
  }) = AuthEventLoginStated;

  const factory AuthEvent.logout() = AuthEventLogout;
}
