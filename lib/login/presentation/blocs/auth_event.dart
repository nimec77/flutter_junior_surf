part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted(final Credentials credentials) = AuthEventLoginStated;

  const factory AuthEvent.loggedIn() = AuthEventLoggedIn;

  const factory AuthEvent.logout() = AuthEventLogout;

  const factory AuthEvent.loggedOut() = AuthEventLoggedOut;
}
