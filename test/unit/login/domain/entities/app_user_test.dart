import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/data/errors/login_error.dart';
import 'package:flutter_junior_surf/login/domain/entities/app_user.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}
class MockCredentialsSaveUseCase extends Mock implements CredentialsSaveUseCase {}

void main() {
  const credentials = Credentials(email: 'email', password: 'password');
  final mockAuthRepository = MockAuthRepository();
  final mockCredentialsSaveUseCase = MockCredentialsSaveUseCase();
  AppUser? appUser;

  setUpAll(() {
    registerFallbackValue(const NullCredentials());
  });

  setUp(() {
    appUser = AppUser(authRepository: mockAuthRepository, credentialsSaveUseCase: mockCredentialsSaveUseCase);
  });

  tearDown(() {
    appUser?.dispose();
  });

  group('AppUser test', () {
    test('login test successful', () async {
      when(() => mockCredentialsSaveUseCase.save(any())).thenAnswer((_) => Future.value(const Right(true)));
      when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(const Right(true)));
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      final result = await appUser!.login(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isRight(), true);
      expect(result | false, true);
      expect(appUser!.credentials, credentials);
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, true);
      verify(() => mockCredentialsSaveUseCase.save(any())).called(1);
      verify(() => mockAuthRepository.login(any())).called(1);
    });

    test('login test unsuccessful', () async {
      when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(const Right(false)));
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      final result = await appUser!.login(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isRight(), true);
      expect(result | true, false);
      expect(appUser!.credentials, const NullCredentials());
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      verify(() => mockAuthRepository.login(any())).called(1);
    });

    test('login test failure', () async {
      when(() => mockAuthRepository.login(any()))
          .thenAnswer((_) => Future.value(const Left(LoginError.invalidCredentials())));
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      final result = await appUser!.login(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, const LoginError.invalidCredentials());
      });
      expect(appUser!.credentials, const NullCredentials());
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      verify(() => mockAuthRepository.login(any())).called(1);
    });

    test('logout test when is logged in', () async {
      when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(const Right(true)));
      when(mockAuthRepository.logout).thenAnswer((_) => Future.value());
      await appUser!.login(credentials);
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, true);
      await appUser!.logout();
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      expect(appUser!.credentials, const NullCredentials());
      verify(() => mockAuthRepository.login(any())).called(1);
      verify(mockAuthRepository.logout).called(1);
    });

    test('logout test when is no logged in', () async {
      when(mockAuthRepository.logout).thenAnswer((_) => Future.value());
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      expect(appUser!.credentials, const NullCredentials());
      await appUser!.logout();
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      expect(appUser!.credentials, const NullCredentials());
      verifyNever(mockAuthRepository.logout);
    });
  });
}
