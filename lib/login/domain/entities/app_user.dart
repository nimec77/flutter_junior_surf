import 'dart:async';

import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';

class AppUser {
  AppUser({required this.authRepository, required this.credentialsSaveUseCase}) {
    _loggedIn = StreamController.broadcast(onListen: _onLoggedInListen);
  }

  final AuthRepository authRepository;
  final CredentialsSaveUseCase credentialsSaveUseCase;
  late final StreamController<bool> _loggedIn;
  Credentials _credentials = const NullCredentials();

  Credentials get credentials => _credentials;

  Stream<bool> get loggedIn => _loggedIn.stream;

  void dispose() {
    _loggedIn.close();
  }

  void _onLoggedInListen() {
    _loggedIn.add(_credentials is! NullCredentials);
  }

  Future<EitherBool> login(Credentials credentials) async {
    final result = await authRepository.login(credentials);
    if (result.getOrElse(() => false)) {
      _credentials = credentials;
      _loggedIn.add(true);
      await credentialsSaveUseCase.save(credentials);
    } else {
      _loggedIn.add(false);
    }

    return result;
  }

  Future<void> logout() async {
    if (_credentials is NullCredentials) {
      return;
    }
    await authRepository.logout();
    _credentials = const NullCredentials();
    _loggedIn.add(false);
  }
}
