import 'package:flutter_junior_surf/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('LoginPage test', () {
    testWidgets('LoginPage render test', (tester) async {
      await tester.pumpSizerAndScaffold(const LoginPage());

      final loginBackgroundFinder = find.byType(LoginBackground);
      expect(loginBackgroundFinder, findsOneWidget);

      final loginCartFinder = find.byType(LoginCart);
      expect(loginCartFinder, findsOneWidget);
    });
  });
}
