import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCredentialsRepository extends Mock implements CredentialsRepository {}

void main() {
  const credentials = Credentials(email: 'email@domain.com', password: '12345678');
  final mockCredentialsRepository = MockCredentialsRepository();
  final credentialsSaveUseCase = CredentialsSaveUseCase(
    credentialsRepository: mockCredentialsRepository,
    emailAndPasswordValidators: EmailAndPasswordValidators(),
  );

  setUpAll(() {
    registerFallbackValue<Credentials>(const NullCredentials());
  });

  group('CredentialsSaveUseCase test', () {
    test('save success test', () async {
      when(() => mockCredentialsRepository.saveCredentials(any())).thenAnswer((_) => Future.value(const Right(true)));

      final result = await credentialsSaveUseCase.save(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isRight(), true);
      expect(result | false, true);
    });

    test('save provider failure test', () async {
      final error = ArgumentError('Save Error');
      when(() => mockCredentialsRepository.saveCredentials(any()))
          .thenAnswer((invocation) => Future.value(Left(error)));

      final result = await credentialsSaveUseCase.save(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, error);
      });
    });

    test('save email validator failure test', () async {
      when(() => mockCredentialsRepository.saveCredentials(any()))
          .thenAnswer((invocation) => Future.value(const Right(true)));

      final result = await credentialsSaveUseCase.save(const Credentials(email: 'email', password: '12345678'));
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, isA<ArgumentError>());
      });
    });

    test('save password validator failure test', () async {
      when(() => mockCredentialsRepository.saveCredentials(any()))
          .thenAnswer((invocation) => Future.value(const Right(true)));

      final result =
          await credentialsSaveUseCase.save(const Credentials(email: 'email@domain.com', password: '123456'));
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, isA<ArgumentError>());
      });
    });
  });
}
