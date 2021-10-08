import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this.authProvider);

  final AuthProvider authProvider;
  @override
  Future<EitherBool> login(Credentials credentials) {
    return authProvider.login(credentials.email, credentials.password);
  }

  @override
  Future<void> logout() {
    return authProvider.logout();
  }
}