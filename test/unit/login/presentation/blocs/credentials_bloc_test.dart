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
        when(mockCredentialsLoadUseCase.load).thenReturn(const Right(credentials));
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
        when(mockCredentialsLoadUseCase.load).thenReturn(Left(error));
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

    blocTest<CredentialsBloc, CredentialsState>(
      'emit [saveSuccess] when event saved successful',
      build: () {
        when(() => mockCredentialsSaveUseCase.save(any())).thenAnswer((_) => Future.value(const Right(true)));
        return CredentialsBloc(
          credentialsLoadUseCase: mockCredentialsLoadUseCase,
          credentialsSaveUseCase: mockCredentialsSaveUseCase,
        );
      },
      act: (credentialsBloc) => credentialsBloc.add(const CredentialsEvent.saved(credentials)),
      expect: () => [
        const CredentialsState.saveSuccess(),
      ],
      verify: (_) => verify(() => mockCredentialsSaveUseCase.save(any())).called(1),
    );

    blocTest<CredentialsBloc, CredentialsState>(
      'emit [saveFailure] when event saved failed',
      build: () {
        when(() => mockCredentialsSaveUseCase.save(any())).thenAnswer((_) => Future.value(const Right(false)));
        return CredentialsBloc(
          credentialsLoadUseCase: mockCredentialsLoadUseCase,
          credentialsSaveUseCase: mockCredentialsSaveUseCase,
        );
      },
      act: (credentialsBloc) => credentialsBloc.add(const CredentialsEvent.saved(credentials)),
      expect: () => [
        isA<CredentialsStateSaveFailure>(),
      ],
      verify: (_) => verify(() => mockCredentialsSaveUseCase.save(any())).called(1),
    );

    blocTest<CredentialsBloc, CredentialsState>(
      'emit [saveInProgress, saveFailure] when event saved error',
      build: () {
        when(() => mockCredentialsSaveUseCase.save(any())).thenAnswer((_) => Future.value(Left(error)));
        return CredentialsBloc(
          credentialsLoadUseCase: mockCredentialsLoadUseCase,
          credentialsSaveUseCase: mockCredentialsSaveUseCase,
        );
      },
      act: (credentialsBloc) => credentialsBloc.add(const CredentialsEvent.saved(credentials)),
      expect: () => [
        const CredentialsState.saveInProgress(),
        CredentialsState.saveFailure(error),
      ],
      verify: (_) => verify(() => mockCredentialsSaveUseCase.save(any())).called(1),
    );
  });
}
