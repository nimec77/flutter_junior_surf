import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_in_progress.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('UsersInProgress widget test', () {
    testWidgets('Render test', (widgetTester) async {
      const widget = UsersInProgress();
      await widgetTester.pumpSizer(widget);

      final progressFinder = find.byType(CircularProgressIndicator);
      expect(progressFinder, findsOneWidget);
    });
  });
}