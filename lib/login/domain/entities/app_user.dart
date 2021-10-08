import 'dart:async';

import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';

class AppUser {
  AppUser(this.authRepository) {
    _loggedIn = StreamController.broadcast(
      onListen: _onLoggedInListen
    )..add(credentials is! EmptyCredentials);
  }

  final AuthRepository authRepository;
  late final StreamController<bool> _loggedIn;
  Credentials _credentials = const EmptyCredentials();

  Credentials get credentials => _credentials;

  Stream<bool> get loggedIn => _loggedIn.stream;

  void dispose() {
    _loggedIn.close();
  }

  void _onLoggedInListen() {
    _loggedIn.add(_credentials is! EmptyCredentials);
  }

  Future<EitherBool> login(Credentials credentials) async {
    final result = await authRepository.login(credentials);
    if (result.getOrElse(() => false)) {
      _credentials = credentials;
      _loggedIn.add(true);
    } else {
      _loggedIn.add(false);
    }

    return result;
  }

  Future<void> logout() async {
    if (_credentials is EmptyCredentials) {
      return;
    }
    await authRepository.logout();
    _credentials = const EmptyCredentials();
    _loggedIn.add(false);
  }
}
