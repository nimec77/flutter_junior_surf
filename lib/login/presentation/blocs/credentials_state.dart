part of 'credentials_bloc.dart';

@freezed
class CredentialsState with _$CredentialsState {
  const factory CredentialsState.init() = CredentialsStateInit;

  const factory CredentialsState.loadSuccess(final Credentials credentials) = CredentialsStateLoadSuccess;

  const factory CredentialsState.loadFailure(final Error error) = CredentialsStateLoadFailure;
}
