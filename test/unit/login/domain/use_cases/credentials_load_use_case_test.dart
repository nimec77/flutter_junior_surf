import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_load_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCredentialsRepository extends Mock implements CredentialsRepository {}

void main() {
  final mockCredentialsRepository = MockCredentialsRepository();
  final credentialsLoadUseCase = CredentialsLoadUseCase(credentialsRepository: mockCredentialsRepository);

  group('CredentialsLoadUseCase test', () {
    test('load success test', () async {
      const credentials = Credentials(email: 'email@domain.com', password: '12345678');
      when(mockCredentialsRepository.loadCredentials).thenAnswer((_) => Future.value(const Right(credentials)));

      final result = await credentialsLoadUseCase.load();
      expect(result, isA<EitherCredential>());
      expect(result.isRight(), true);
      expect(result | const NullCredentials(), credentials);
    });

    test('load repository failure test', () async {
      final error = TypeError();
      when(mockCredentialsRepository.loadCredentials).thenAnswer((_) => Future.value(Left(error)));

      final result = await credentialsLoadUseCase.load();
      expect(result, isA<EitherCredential>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, error);
      });
    });

    test('load validator email failure test', () async {
      const credentials = Credentials(email: 'email', password: '12345678');
      when(mockCredentialsRepository.loadCredentials).thenAnswer((_) => Future.value(const Right(credentials)));

      final result = await credentialsLoadUseCase.load();
      expect(result, isA<EitherCredential>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, isA<StateError>());
      });
    });

    test('load validator password failure test', () async {
      const credentials = Credentials(email: 'email@domain.com', password: '123456');
      when(mockCredentialsRepository.loadCredentials).thenAnswer((_) => Future.value(const Right(credentials)));

      final result = await credentialsLoadUseCase.load();
      expect(result, isA<EitherCredential>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, isA<StateError>());
      });
    });
  });
}
