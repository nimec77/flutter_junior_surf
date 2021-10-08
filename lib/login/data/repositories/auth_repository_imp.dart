import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/data/errors/login_error.dart';
import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this.authProvider);

  final AuthProvider authProvider;
  @override
  Future<EitherBool> login(Credentials credentials) async {
    try {
      final result = await authProvider.login(credentials.email, credentials.password);
      return Right(result);
    } on LoginErrorInvalidCredentials catch(error) {
      return Left(error);
    }
  }

  @override
  Future<void> logout() {
    return authProvider.logout();
  }
}