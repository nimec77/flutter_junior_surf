import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepository = MockAuthRepository();
  final loginError = StateError('Login Failure');

  setUpAll(() {
    registerFallbackValue<Credentials>(const Credentials(email: 'email', password: 'password'));
  });

  group('AuthBloc test', () {
    test('Initial state is notAuthorized', () {
      expect(AuthBloc(mockAuthRepository).state, equals(const AuthState.notAuthorized()));
    });

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, success] when event loginStarted successful',
      build: () {
        when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(const Right(true)));
        return AuthBloc(mockAuthRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        const AuthState.success(),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.login(any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, failed] when event loginStarted unsuccessful',
      build: () {
        when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(const Right(false)));
        return AuthBloc(mockAuthRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        isA<AuthStateFailed>(),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.login(any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, failed] when event loginStarted failure',
      build: () {
        when(() => mockAuthRepository.login(any())).thenAnswer((_) => Future.value(Left(loginError)));
        return AuthBloc(mockAuthRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        AuthState.failed(loginError),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.login(any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, notAuthorized] when event logout',
      build: () {
        when(mockAuthRepository.logout).thenAnswer((_) => Future.value());
        return AuthBloc(mockAuthRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.logout()),
      expect: () => [
        const AuthState.inProgress(),
        const AuthState.notAuthorized(),
      ],
      verify: (_) {
        verify(mockAuthRepository.logout).called(1);
      },
    );
  });
}
