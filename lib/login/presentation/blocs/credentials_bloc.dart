import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_load_use_case.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'credentials_event.dart';

part 'credentials_state.dart';

part 'credentials_bloc.freezed.dart';

class CredentialsBloc extends Bloc<CredentialsEvent, CredentialsState> {
  CredentialsBloc({
    required this.credentialsLoadUseCase,
    required this.credentialsSaveUseCase,
  }) : super(const CredentialsState.loadSuccess(NullCredentials())) {
    on<CredentialsEventLoaded>(_mapLoadedToState);
    on<CredentialsEventSaved>(_mapSavedToState);
  }

  final CredentialsLoadUseCase credentialsLoadUseCase;
  final CredentialsSaveUseCase credentialsSaveUseCase;

  Future<void> _mapLoadedToState(CredentialsEventLoaded event, Emitter<CredentialsState> emit) async {
    final resultEither = credentialsLoadUseCase.load();
    emit(
      resultEither.fold(
        (error) => CredentialsState.loadFailure(error),
        (credentials) => CredentialsState.loadSuccess(credentials),
      ),
    );
  }

  Future<void> _mapSavedToState(CredentialsEventSaved event, Emitter<CredentialsState> emit) async {
    emit(const CredentialsState.saveInProgress());
    final resultEither = await credentialsSaveUseCase.save(event.credentials);
    emit(
      resultEither.fold(
        (error) => CredentialsState.saveFailure(error),
        (result) => result
            ? const CredentialsState.saveSuccess()
            : CredentialsState.saveFailure(StateError('Error Save Credentials')),
      ),
    );
  }
}
