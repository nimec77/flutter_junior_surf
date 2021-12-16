
import 'dart:async';

import 'package:flutter_junior_surf/login/domain/entities/app_user.dart';
import 'package:mocktail/mocktail.dart';

class MockAppUser extends Mock implements AppUser {
  late final StreamController<bool> _loggedIn;

  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    _loggedIn.add(_isLoggedIn);
  }

  bool get isLoggedIn => _isLoggedIn;

  @override
  Stream<bool> get loggedIn => _loggedIn.stream;

  bool _isLoggedIn = false;

  MockAppUser() {
    _loggedIn = StreamController<bool>.broadcast(onListen: () {
      _loggedIn.add(_isLoggedIn);
    });
  }


  @override
  void dispose() {
    _loggedIn.close();
  }
}
