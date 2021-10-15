import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/user_title.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  final mockAuthBloc = MockAuthBloc();
  final userHelper = UserHelper(seed: 42);
  late final Iterable<User> users;

  setUpAll(() {
    users = userHelper.fakeUsersPod(10).map((e) => e.toUser());
  });

  group('UsersList widget test', () {
    testWidgets('Render test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return UsersList(authBloc: mockAuthBloc, users: users);
        },
      );
      await widgetTester.pumpSizer(widget);

      final iconButtonFinder = find.byType(IconButton);
      expect(iconButtonFinder, findsOneWidget);

      final spaceBarFinder = find.byType(FlexibleSpaceBar);
      expect(spaceBarFinder, findsOneWidget);
      final spaceBarWidget = widgetTester.widget<FlexibleSpaceBar>(spaceBarFinder);
      final paddingWidget = spaceBarWidget.title as Padding?;
      final barTextWidget = paddingWidget?.child as Text?;
      expect(barTextWidget?.data, l10n.usersPageTitle);

      final userTitlesFinder = find.byType(UserTitle);
      expect(userTitlesFinder, findsWidgets);
      final userTitleWidget = widgetTester.widget<UserTitle>(userTitlesFinder.at(0));
      expect(userTitleWidget.user, users.first);
    });
  });
}
