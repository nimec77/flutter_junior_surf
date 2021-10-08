part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted(final Credentials credentials) = AuthEventLoginStated;

  const factory AuthEvent.logout() = AuthEventLogout;
}
