import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';

class AuthProvider {
  Future<EitherBool> login(String email, String password) async {
    return const Right(true);
  }

  Future<void> logout() async {}
}