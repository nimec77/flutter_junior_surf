import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';

class CredentialsLoadUseCase with EmailAndPasswordValidators {
  CredentialsLoadUseCase({required this.credentialsRepository});

  final CredentialsRepository credentialsRepository;

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
