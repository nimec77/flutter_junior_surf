import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(const AuthState.notAuthorized()) {
    on<AuthEventLoginStated>(_mapLoginStartedToState);
    on<AuthEventLogout>(_mapLogoutToState);
  }

  final AuthRepository authRepository;

  Future<void> _mapLoginStartedToState(AuthEventLoginStated event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());
    final result = await authRepository.login(event.email, event.password);
    emit(
      result.fold(
        (error) => AuthState.failed(error),
        (loggedIn) => loggedIn ? const AuthState.success() : AuthState.failed(StateError('Authorisation Error')),
      ),
    );
  }

  Future<void> _mapLogoutToState(AuthEventLogout event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());
    emit(const AuthState.notAuthorized());
  }
}
