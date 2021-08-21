import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('LoginBackground test', () {
    testWidgets('Render LoginBackground widget', (tester) async {
      late final AppLocalizations l10n;
      final widget = Builder(builder: (context) {
        l10n = context.l10n;
        return LoginBackground(text: l10n.loginPageText);
      });
      await tester.pumpSizerAndScaffold(widget);
      final clipPathWidget = find.byType(ClipPath);
      expect(clipPathWidget, findsOneWidget);

      final loginPageTextFinder = find.text(l10n.loginPageText);
      expect(loginPageTextFinder, findsOneWidget);
    });
  });
}
