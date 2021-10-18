import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';

typedef EitherBool = Either<Error, bool>;
typedef EitherCredential = Either<Error, Credentials>;

abstract class CredentialsRepository {
  Future<EitherCredential> loadCredentials();

  Future<EitherBool> saveCredentials(Credentials credentials);
}