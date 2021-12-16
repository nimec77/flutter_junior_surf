//ignore_for_file: long-method

import 'package:flutter_junior_surf/login/presentation/constants.dart';
import 'package:flutter_junior_surf/login/presentation/pages/login_page.dart';
import 'package:flutter_junior_surf/main.dart' as app;
import 'package:flutter_junior_surf/users/presentation/constants.dart';
import 'package:flutter_junior_surf/users/presentation/pages/users_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  group('Input correct data test', () {
    testWidgets('render test', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();

      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('entering incorrect data test', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();

      final loginEmailFinder = find.byKey(kLoginEmailKey);
      await widgetTester.enterText(loginEmailFinder, 'email');
      await widgetTester.pumpAndSettle();

      final loginPasswordFinder = find.byKey(kLoginPasswordKey);
      await widgetTester.enterText(loginPasswordFinder, 'password');
      await widgetTester.pumpAndSettle();

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      await widgetTester.tap(loginButtonFinder);
      await widgetTester.pumpAndSettle();

      expect(find.byType(LoginPage), findsOneWidget);
      expect(find.byType(UsersPage), findsNothing);
    });

    testWidgets('entering correct data test', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();

      final loginEmailFinder = find.byKey(kLoginEmailKey);
      await widgetTester.enterText(loginEmailFinder, 'email@domain.com');
      await widgetTester.pumpAndSettle();

      final loginPasswordFinder = find.byKey(kLoginPasswordKey);
      await widgetTester.enterText(loginPasswordFinder, '12345678');
      await widgetTester.pumpAndSettle();

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      await widgetTester.tap(loginButtonFinder);
      await widgetTester.pumpAndSettle();

      expect(find.byType(UsersPage), findsOneWidget);
      expect(find.byType(LoginPage), findsNothing);
    });

    testWidgets('entering correct data test', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();

      final loginEmailFinder = find.byKey(kLoginEmailKey);
      await widgetTester.enterText(loginEmailFinder, 'email@domain.com');
      await widgetTester.pumpAndSettle();

      final loginPasswordFinder = find.byKey(kLoginPasswordKey);
      await widgetTester.enterText(loginPasswordFinder, '12345678');
      await widgetTester.pumpAndSettle();

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      await widgetTester.tap(loginButtonFinder);
      await widgetTester.pumpAndSettle();

      expect(find.byType(UsersPage), findsOneWidget);

      final logoutButtonFinder = find.byKey(kUsersLogoutButtonKey);
      await widgetTester.tap(logoutButtonFinder);
      await widgetTester.pumpAndSettle();

      expect(find.byType(LoginPage), findsOneWidget);
      expect(find.byType(UsersPage), findsNothing);
    });
  });
}