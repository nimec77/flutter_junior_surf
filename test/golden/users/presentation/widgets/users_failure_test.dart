import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_failure.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockUsersBloc extends Mock implements UsersBloc {}

void main() {
  final mockUsersBloc = MockUsersBloc();

  testGoldens('UsersFailure render test', (tester) async {
    final widget = UsersFailure(usersBloc: mockUsersBloc);
    await tester.pumpWidgetBuilder(
      widget,
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_users_failure');
  });
}
