import 'package:flutter/foundation.dart';

class AuthProvider {
  Future<bool> login(String email, String password) async {
    return true;
  }

  Future<void> logout() async {
    debugPrint('Logout');
  }
}