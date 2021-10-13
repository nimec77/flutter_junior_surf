import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/refresh_button.dart';
import 'package:flutter_junior_surf/users/presentation/constants.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockUsersBloc extends Mock implements UsersBloc {}

void main() {
  final mockUsersBloc = MockUsersBloc();

  group('UsersFailure widget test', () {
    testWidgets('Render test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return UsersFailure(usersBloc: mockUsersBloc);
        },
      );
      await widgetTester.pumpSizer(widget);

      final imageFinder = find.byType(Image);
      expect(imageFinder, findsOneWidget);

      final textFinder = find.byKey(kUsersFailureErrorKey);
      expect(textFinder, findsOneWidget);
      final text = widgetTester.widget<Text>(textFinder);
      expect(text.data, l10n.usersFailureError);

      final refreshButtonFinder = find.byType(RefreshButton);
      expect(refreshButtonFinder, findsOneWidget);
    });
  });
}
