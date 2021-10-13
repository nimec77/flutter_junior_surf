import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_background.dart';
import 'package:flutter_junior_surf/login/presentation/pages/login_page.dart';
import 'package:flutter_junior_surf/login/presentation/widgets/login_cart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

void main() {
  late final MockAuthBloc mockAuthBlock;

  setUpAll(() {
    registerFallbackValue<AuthState>(const AuthState.notAuthorized());
    registerFallbackValue<AuthEvent>(const AuthEvent.loginStarted(Credentials(email: 'email', password: 'password')));
    mockAuthBlock = MockAuthBloc();
  });

  group('LoginPage test', () {
    testWidgets('LoginPage render test', (tester) async {
      whenListen<AuthState>(
        mockAuthBlock,
        Stream.fromIterable([]),
        initialState: const AuthState.notAuthorized(),
      );
      await tester.pumpSizerAndScaffold(LoginPage(authBloc: mockAuthBlock));

      final loginBackgroundFinder = find.byType(LoginBackground);
      expect(loginBackgroundFinder, findsOneWidget);

      final loginCartFinder = find.byType(LoginCart);
      expect(loginCartFinder, findsOneWidget);
    });
  });
}
