import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_button.dart';
import 'package:flutter_junior_surf/login/presentation/constants.dart';
import 'package:flutter_junior_surf/login/presentation/widgets/login_cart.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('LoginCart widget test', () {
    testWidgets('Render test', (tester) async {
      late final AppLocalizations l10n;
      final widget = Builder(builder: (context) {
        l10n = context.l10n;

        return LoginCart(
          enabled: true,
          credentials: const NullCredentials(),
          onLoginPressed: (_, __) => debugPrint('Login'),
        );
      });
      await tester.pumpSizerAndScaffold(widget);

      final textFieldFinder = find.byType(TextField);
      expect(textFieldFinder, findsNWidgets(2));

      final elevatedButtonFinder = find.byType(ElevatedButton);
      expect(elevatedButtonFinder, findsOneWidget);

      final loginEmailFinder = find.byKey(kLoginEmailKey);
      expect(loginEmailFinder, findsOneWidget);
      final emailTextFieldWidget = tester.findChildWidget<TextField>(loginEmailFinder);
      expect(emailTextFieldWidget?.decoration?.labelText, l10n.loginEmailText);

      final loginPasswordFinder = find.byKey(kLoginPasswordKey);
      expect(loginPasswordFinder, findsOneWidget);
      final loginPasswordFieldWidget = tester.findChildWidget<TextField>(loginPasswordFinder);
      expect(loginPasswordFieldWidget?.decoration?.labelText, l10n.loginPasswordText);

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      expect(loginButtonFinder, findsOneWidget);
      final loginButtonWidget = tester.widget<LoginButton>(loginButtonFinder);
      final loginButtonText = loginButtonWidget.child as Text;
      expect(loginButtonText.data, l10n.loginButtonText);

      final elevatedButtonWidget = tester.firstWidget<ElevatedButton>(elevatedButtonFinder);
      expect(elevatedButtonWidget.enabled, isFalse);
    });
  });
}
