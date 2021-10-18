import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';

class CredentialsSaveUseCase with EmailAndPasswordValidators {
  CredentialsSaveUseCase({required this.credentialsRepository});

  final CredentialsRepository credentialsRepository;

  Future<EitherBool> save(Credentials credentials) async {
    if (!emailValidator.isValid(credentials.email) || !passwordValidator.isValid(credentials.password)) {
      return Left(ArgumentError('Invalid credentials'));
    }
    return credentialsRepository.saveCredentials(credentials);
  }
}
