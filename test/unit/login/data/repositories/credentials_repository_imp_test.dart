import 'package:flutter_junior_surf/login/data/providers/credentials_provider.dart';
import 'package:flutter_junior_surf/login/data/repositories/credentials_repository_imp.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCredentialsProvider extends Mock implements CredentialsProvider {}

void main() {
  const credentials = Credentials(email: 'email', password: 'password');
  final mockCredentialsProvider = MockCredentialsProvider();
  final credentialsRepository = CredentialsRepositoryImp(mockCredentialsProvider);

  setUpAll(() {
    registerFallbackValue<Credentials>(const NullCredentials());
  });

  group('CredentialsRepository test', () {
    test('loadCredentials success test', () async {
      when(mockCredentialsProvider.loadCredentials).thenReturn(credentials);

      final result = credentialsRepository.loadCredentials();
      expect(result, isA<EitherCredential>());
      expect(result.isRight(), true);
      expect(result | const NullCredentials(), credentials);

      verify(mockCredentialsProvider.loadCredentials).called(1);
    });

    test('loadCredentials failure test', () {
      final error = TypeError();
      when(mockCredentialsProvider.loadCredentials).thenThrow(error);

      final result = credentialsRepository.loadCredentials();
      expect(result, isA<EitherCredential>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, error);
      });
      verify(mockCredentialsProvider.loadCredentials).called(1);
    });

    test('saveCredentials success test', () async {
      when(() => mockCredentialsProvider.saveCredentials(any())).thenAnswer((_) => Future.value(true));

      final result = await credentialsRepository.saveCredentials(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isRight(), true);
      expect(result | false, true);

      verify(() => mockCredentialsProvider.saveCredentials(any())).called(1);
    });

    test('saveCredentials failure test', () async {
      final error = ArgumentError('Save Credentials Error');
      when(() => mockCredentialsProvider.saveCredentials(any())).thenThrow(error);

      final result = await credentialsRepository.saveCredentials(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, error);
      });
    });
  });
}
