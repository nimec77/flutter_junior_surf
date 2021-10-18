part of 'credentials_bloc.dart';

@freezed
class CredentialsState with _$CredentialsState {
  const factory CredentialsState.loadSuccess(final Credentials credentials) = CredentialsStateLoadSuccess;

  const factory CredentialsState.loadFailure(final Error error) = CredentialsStateLoadFailure;

  const factory CredentialsState.saveInProgress() = CredentialsStateInProgress;

  const factory CredentialsState.saveSuccess() = CredentialsStateSaveSuccess;

  const factory CredentialsState.saveFailure(final Error error) = CredentialsStateSaveFailure;
}
