import 'package:flutter_junior_surf/login/presentation/common_widget/login_background.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/helpers.dart';

void main() {
  testGoldens('LoginBackground render test', (tester) async {
    const widget = LoginBackground(text: 'Вход');
    final builder = GoldenBuilder.column()..addScenario('LoginBackground', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_background');
  });
}
