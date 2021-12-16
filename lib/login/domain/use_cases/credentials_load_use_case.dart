import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';

//ignore: prefer_mixin
class CredentialsLoadUseCase with EmailAndPasswordValidators {
  final CredentialsRepository credentialsRepository;

  CredentialsLoadUseCase({required this.credentialsRepository});


  Future<EitherCredential> load() async {
    final resultEither = await credentialsRepository.loadCredentials();

    return resultEither.fold(
      (error) => Left(error),
      (credentials) {
        if (!emailValidator.isValid(credentials.email) || !passwordValidator.isValid(credentials.password)) {
          return Left(StateError('Invalid credentials'));
        }

        return Right(credentials);
      },
    );
  }
}
