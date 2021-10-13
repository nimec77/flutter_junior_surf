import 'package:flutter_junior_surf/users/presentation/widgets/users_in_progress.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/helpers.dart';

void main() {
  testGoldens('UsersInProgress render test', (tester) async {
    const widget = UsersInProgress(value: 0.7);
    await tester.pumpWidgetBuilder(
      widget,
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_users_in_progress');
  });
}
