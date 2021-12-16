import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/refresh_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('RefreshButton widget test', () {
    testWidgets('RefreshButton test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;

          return RefreshButton(text: l10n.refreshButtonText);
        },
      );
      await widgetTester.pumpSizer(widget);

      final buttonFinder = find.byType(ElevatedButton);
      expect(buttonFinder, findsOneWidget);

      final textFinder = find.byType(Text);
      expect(textFinder, findsOneWidget);
      final textWidget = widgetTester.widget<Text>(textFinder);
      expect(textWidget.data, l10n.refreshButtonText);
    });
  });
}
