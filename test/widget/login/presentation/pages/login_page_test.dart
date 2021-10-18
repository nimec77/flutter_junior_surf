import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/credentials_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_background.dart';
import 'package:flutter_junior_surf/login/presentation/pages/login_page.dart';
import 'package:flutter_junior_surf/login/presentation/widgets/login_cart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockCredentialsBloc extends MockBloc<CredentialsEvent, CredentialsState> implements CredentialsBloc {}

void main() {
  late final MockAuthBloc mockAuthBlock;
  late final MockCredentialsBloc mockCredentialsBloc;

  setUpAll(() {
    registerFallbackValue<AuthState>(const AuthState.notAuthorized());
    registerFallbackValue<AuthEvent>(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password')));
    registerFallbackValue<CredentialsState>(const CredentialsState.loadSuccess(NullCredentials()));
    registerFallbackValue<CredentialsEvent>(const CredentialsEvent.loaded());
    mockAuthBlock = MockAuthBloc();
    mockCredentialsBloc = MockCredentialsBloc();
  });

  group('LoginPage test', () {
    testWidgets('LoginPage render test', (tester) async {
      whenListen<AuthState>(
        mockAuthBlock,
        Stream.fromIterable([]),
        initialState: const AuthState.notAuthorized(),
      );
      whenListen<CredentialsState>(
        mockCredentialsBloc,
        Stream.fromIterable([]),
        initialState: const CredentialsState.loadSuccess(NullCredentials()),
      );
      await tester.pumpSizerAndScaffold(LoginPage(authBloc: mockAuthBlock, credentialsBloc: mockCredentialsBloc));

      final loginBackgroundFinder = find.byType(LoginBackground);
      expect(loginBackgroundFinder, findsOneWidget);

      final loginCartFinder = find.byType(LoginCart);
      expect(loginCartFinder, findsOneWidget);
    });
  });
}
