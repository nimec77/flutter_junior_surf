part of 'credentials_bloc.dart';

@freezed
class CredentialsEvent with _$CredentialsEvent {
  const factory CredentialsEvent.loaded() = CredentialsEventLoaded;
}
