import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';

class CredentialsSaveUseCase {
  CredentialsSaveUseCase({required this.credentialsRepository, required this.emailAndPasswordValidators});

  final CredentialsRepository credentialsRepository;
  final EmailAndPasswordValidators emailAndPasswordValidators;

  Future<EitherBool> save(Credentials credentials) async {
    if (!emailAndPasswordValidators.emailValidator.isValid(credentials.email) ||
        !emailAndPasswordValidators.passwordValidator.isValid(credentials.password)) {
      return Left(ArgumentError('Invalid credentials'));
    }
    return credentialsRepository.saveCredentials(credentials);
  }
}
