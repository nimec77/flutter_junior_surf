// ignore_for_file:avoid_catching_errors
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/data/providers/credentials_provider.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';

class CredentialsRepositoryImp implements CredentialsRepository {
  CredentialsRepositoryImp(this.credentialsProvider);

  final CredentialsProvider credentialsProvider;

  @override
  EitherCredential loadCredentials() {
    try {
      final result = credentialsProvider.loadCredentials();
      return Right(result);
    } on TypeError catch(error) {
      return Left(error);
    }
  }

  @override
  Future<EitherBool> saveCredentials(Credentials credentials) async {
    try {
       final result = await credentialsProvider.saveCredentials(credentials);
       return Right(result);
    } on ArgumentError catch(error) {
      return Left(error);
    }
  }
}