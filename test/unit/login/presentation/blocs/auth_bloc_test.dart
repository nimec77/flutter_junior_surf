
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/data/errors/login_error.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/mock_helpers.dart';

void main() {
  final mockAppUser = MockAppUser();

  setUpAll(() {
    registerFallbackValue(const Credentials(email: 'email', password: 'password'));
  });

  group('AuthBloc test', () {
    test('Initial state is notAuthorized', () {
      expect(AuthBloc(mockAppUser).state, const AuthState.notAuthorized());
    });

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, success] when event loginStarted successful',
      build: () {
        when(() => mockAppUser.login(any())).thenAnswer((_) {
          mockAppUser.isLoggedIn = true;

          return Future.value(const Right(true));
        });

        return AuthBloc(mockAppUser);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        const AuthState.success(),
      ],
      verify: (_) => verify(() => mockAppUser.login(any())).called(1),
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, failed] when event loginStarted unsuccessful',
      build: () {
        when(() => mockAppUser.login(any())).thenAnswer((_) {
          mockAppUser.isLoggedIn = false;

          return Future.value(const Right(false));
        });

        return AuthBloc(mockAppUser);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        isA<AuthStateFailed>(),
      ],
      verify: (_) => verify(() => mockAppUser.login(any())).called(1),
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, failed] when event loginStarted failure',
      build: () {
        when(() => mockAppUser.login(any()))
            .thenAnswer((_) => Future.value(const Left(LoginError.invalidCredentials())));
        mockAppUser.isLoggedIn = false;

        return AuthBloc(mockAppUser);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password'))),
      expect: () => [
        const AuthState.inProgress(),
        const AuthState.failed(LoginError.invalidCredentials()),
      ],
      verify: (_) => verify(() => mockAppUser.login(any())).called(1),
    );

    blocTest<AuthBloc, AuthState>(
      'emit [inProgress, notAuthorized] when event logout',
      build: () {
        when(mockAppUser.logout).thenAnswer((_) {
          mockAppUser.isLoggedIn = false;

          return Future.value();
        });

        return AuthBloc(mockAppUser);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.logout()),
      expect: () => [
        const AuthState.inProgress(),
        const AuthState.notAuthorized(),
      ],
      verify: (_) => verify(mockAppUser.logout).called(1),
    );
  });
}
