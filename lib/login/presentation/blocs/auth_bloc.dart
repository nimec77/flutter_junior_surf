import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/login/data/errors/login_error.dart';
import 'package:flutter_junior_surf/login/domain/entities/app_user.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.appUser) : super(const AuthState.notAuthorized()) {
    _loggedInSubscription = appUser.loggedIn
        .listen((isLoggedIn) => add(isLoggedIn ? const AuthEvent.loggedIn() : const AuthEvent.loggedOut()));
    on<AuthEventLoginStated>(_mapLoginStartedToState);
    on<AuthEventLogout>(_mapLogoutToState);
    on<AuthEventLoggedIn>(_mapLoggedInToState);
    on<AuthEventLoggedOut>(_mapLoggedOutToState);
  }

  final AppUser appUser;
  late final StreamSubscription<bool> _loggedInSubscription;

  @override
  Future<void> close() {
    _loggedInSubscription.cancel();
    return super.close();
  }

  Future<void> _mapLoginStartedToState(AuthEventLoginStated event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());
    final result = await appUser.login(event.credentials);
    result.fold(
      (error) => emit(AuthState.failed(error)),
      (loggedIn) {
        if (!loggedIn) {
          emit(const AuthState.failed(LoginError.invalidCredentials()));
        }
      },
    );
  }

  Future<void> _mapLogoutToState(AuthEventLogout event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());
    await appUser.logout();
  }

  Future<void> _mapLoggedInToState(AuthEventLoggedIn event, Emitter<AuthState> emit) async {
    if (state is! AuthStateSuccess) {
      emit(const AuthState.success());
    }
  }

  Future<void> _mapLoggedOutToState(AuthEventLoggedOut event, Emitter<AuthState> emit) async {
    state.maybeMap(
      success: (_) => emit(const AuthState.notAuthorized()),
      inProgress: (_) => emit(const AuthState.notAuthorized()),
      orElse: () {},
    );
  }
}
