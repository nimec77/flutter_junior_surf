import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_list.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  final mockAuthBloc = MockAuthBloc();
  final users = UserHelper(seed: 42).fakeUsersPod(10).map((e) => e.toUser());

  testGoldens('UsersList render test', (tester) async {
    final widget = UsersList(authBloc: mockAuthBloc, users: users);
    await tester.pumpWidgetBuilder(
      widget,
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_users_list_test');
  });
}
