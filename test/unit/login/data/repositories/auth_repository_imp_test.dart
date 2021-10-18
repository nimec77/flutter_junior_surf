import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_junior_surf/login/data/repositories/auth_repository_imp.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthProvider extends Mock implements AuthProvider {}

void main() {
  final mockAuthProvider = MockAuthProvider();
  final authRepository = AuthRepositoryImp(mockAuthProvider);

  group('AuthRepository test', () {
    test('login success test', () async {
      when(() => mockAuthProvider.login(any(), any())).thenAnswer((_) => Future.value(true));

      final result = await authRepository.login(const Credentials(email: 'email', password: 'password'));
      expect(result, isA<EitherBool>());
      expect(result.isRight(), equals(true));
      expect(result | false, equals(true));
      verify(() => mockAuthProvider.login(any(), any())).called(1);
    });

    test('login failure test', () async {
      final error = StateError('Login Error');
      when(() => mockAuthProvider.login(any(), any())).thenThrow(error);

      final result = await authRepository.login(const Credentials(email: 'email', password: 'password'));
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), equals(true));
      result.leftMap((l) {
        expect(l, equals(error));
      });
      verify(() => mockAuthProvider.login(any(), any())).called(1);
    });

    test('logout test', () async {
      when(mockAuthProvider.logout).thenAnswer((_) => Future.value());

      final result = authRepository.logout();
      expect(result, isA<Future<void>>());
      verify(mockAuthProvider.logout).called(1);
    });
  });
}
