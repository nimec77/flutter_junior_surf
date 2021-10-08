import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/data/errors/login_error.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';

typedef EitherBool = Either<LoginError, bool>;

abstract class AuthRepository {
  Future<EitherBool> login(Credentials credentials);

  Future<void> logout();
}