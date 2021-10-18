import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';

class CredentialsLoadUseCase {
  CredentialsLoadUseCase({required this.credentialsRepository, required this.emailAndPasswordValidators});

  final CredentialsRepository credentialsRepository;
  final EmailAndPasswordValidators emailAndPasswordValidators;

  EitherCredential load() {
    return credentialsRepository.loadCredentials().fold(
      (error) => Left(error),
      (credentials) {
        if (!emailAndPasswordValidators.emailValidator.isValid(credentials.email) ||
            !emailAndPasswordValidators.passwordValidator.isValid(credentials.password)) {
          return Left(StateError('Credentials is invalid'));
        }
        return Right(credentials);
      },
    );
  }
}
