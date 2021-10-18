import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_load_use_case.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/credentials_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCredentialsLoadUseCase extends Mock implements CredentialsLoadUseCase {}

class MockCredentialsSaveUseCase extends Mock implements CredentialsSaveUseCase {}

void main() {
  const credentials = Credentials(email: 'email@domain.com', password: '12345678');
  final error = StateError('Load Error');
  final mockCredentialsLoadUseCase = MockCredentialsLoadUseCase();
  final mockCredentialsSaveUseCase = MockCredentialsSaveUseCase();

  setUpAll(() {
    registerFallbackValue<Credentials>(const NullCredentials());
  });

  group('CredentialsBloc test', () {
    test('Initial state is loadSuccess(NullCredentials())', () {
      expect(
          CredentialsBloc(
            credentialsLoadUseCase: mockCredentialsLoadUseCase,
            credentialsSaveUseCase: mockCredentialsSaveUseCase,
          ).state,
          const CredentialsState.loadSuccess(NullCredentials()));
    });

    blocTest<CredentialsBloc, CredentialsState>(
      'emit [loadSuccess] when event loaded successful',
      build: () {
        when(mockCredentialsLoadUseCase.load).thenAnswer((_) => Future.value(const Right(credentials)));
        return CredentialsBloc(
          credentialsLoadUseCase: mockCredentialsLoadUseCase,
          credentialsSaveUseCase: mockCredentialsSaveUseCase,
        );
      },
      act: (credentialsBloc) => credentialsBloc.add(const CredentialsEvent.loaded()),
      expect: () => [
        const CredentialsState.loadSuccess(credentials),
      ],
      verify: (_) => verify(mockCredentialsLoadUseCase.load).called(1),
    );

    blocTest<CredentialsBloc, CredentialsState>(
      'emit [loadFailure] when event loaded failure',
      build: () {
        when(mockCredentialsLoadUseCase.load).thenAnswer((_) => Future.value(Left(error)));
        return CredentialsBloc(
          credentialsLoadUseCase: mockCredentialsLoadUseCase,
          credentialsSaveUseCase: mockCredentialsSaveUseCase,
        );
      },
      act: (credentialsBloc) => credentialsBloc.add(const CredentialsEvent.loaded()),
      expect: () => [
        CredentialsState.loadFailure(error),
      ],
      verify: (_) => verify(mockCredentialsLoadUseCase.load).called(1),
    );
  });
}
