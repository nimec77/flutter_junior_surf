import 'package:dartz/dartz.dart';

typedef EitherBool = Either<Error, bool>;

abstract class AuthRepository {
  Future<EitherBool> login(String email, String password);

  Future<void> logout();
}