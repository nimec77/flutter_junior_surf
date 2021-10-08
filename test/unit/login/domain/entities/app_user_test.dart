import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/entities/app_user.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  const credentials = Credentials(email: 'email', password: 'password');
  final mockAuthRepository = MockAuthRepository();
  AppUser? appUser;

  setUpAll(() {
    registerFallbackValue<Credentials>(const Credentials(email: 'email', password: 'password'));
  });

  setUp(() {
    appUser = AppUser(mockAuthRepository);
  });

  tearDown(() {
    appUser?.dispose();
  });


  group('AppUser test', () {
    test('login test successful', () async {
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
      expect(appUser!.credentials, const EmptyCredentials());
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      verify(() => mockAuthRepository.login(any())).called(1);
    });

    test('login test failure', () async {
      final error = StateError('Login Failure');
      when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(Left(error)));
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      final result = await appUser!.login(credentials);
      expect(result, isA<EitherBool>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, error);
      });
      expect(appUser!.credentials, const EmptyCredentials());
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
      expect(appUser!.credentials, const EmptyCredentials());
      verify(() => mockAuthRepository.login(any())).called(1);
      verify(mockAuthRepository.logout).called(1);
    });

    test('logout test when is no logged in', () async {
      when(mockAuthRepository.logout).thenAnswer((_) => Future.value());
      final initialLoggedIn = await appUser!.loggedIn.first;
      expect(initialLoggedIn, false);
      expect(appUser!.credentials, const EmptyCredentials());
      await appUser!.logout();
      final loggedIn = await appUser!.loggedIn.first;
      expect(loggedIn, false);
      expect(appUser!.credentials, const EmptyCredentials());
      verifyNever(mockAuthRepository.logout);
    });
  });
}