import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('Login Button test', () {
    testWidgets('LoginButton render test', (tester) async {
      late final AppLocalizations l10n;
      final widget = Builder(builder: (context) {
        l10n = context.l10n;

        return LoginButton(enabled: false, child: Text(l10n.loginButtonText));
      });
      await tester.pumpSizerAndScaffold(widget);
      final elevatedButtonFinder = find.byType(ElevatedButton);
      expect(elevatedButtonFinder, findsOneWidget);
      final elevatedButtonWidget = tester.firstWidget<ElevatedButton>(elevatedButtonFinder);
      expect(elevatedButtonWidget.enabled, isFalse);
      final loginButtonText = elevatedButtonWidget.child as Text?;
      expect(loginButtonText?.data, l10n.loginButtonText);
    });
  });
}
