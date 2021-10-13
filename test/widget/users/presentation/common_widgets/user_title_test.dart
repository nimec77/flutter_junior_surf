import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/user_title.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  final user = UserHelper(seed: 42).fakeUserPod().toUser();
  group('UserTitle widget test', () {
    testWidgets('UserTitle test', (widgetTester) async {
      final widget = UserTitle(user: user);
      await widgetTester.pumpSizer(widget);

      final imageFinder = find.byType(Image);
      expect(imageFinder, findsOneWidget);

      final usernameFinder = find.byKey(Key('${user.id}${user.username}'));
      final usernameWidget = widgetTester.widget<Text>(usernameFinder);
      expect(usernameWidget.data, user.username);

      final userEmailFinder = find.byKey(Key('${user.id}${user.email}'));
      final userEmailWidget = widgetTester.widget<Text>(userEmailFinder);
      expect(userEmailWidget.data, user.email);

      final userCompanyNameFinder = find.byKey(Key('${user.id}${user.companyName}'));
      final userCompanyNameWidget = widgetTester.widget<Text>(userCompanyNameFinder);
      expect(userCompanyNameWidget.data, user.companyName);
    });
  });
}
