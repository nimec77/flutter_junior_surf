part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = AuthStateNotAuthorized;

  const factory AuthState.inProgress() = AuthStateInProgress;

  const factory AuthState.success() = AuthStateSuccess;

  const factory AuthState.failed(Error error) = AuthStateFailed;
}
