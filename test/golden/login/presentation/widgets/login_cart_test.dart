import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/widgets/login_cart.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/golden_helper.dart';

void main() {
  testGoldens('LoginCart render test', (tester) async {
    final widget = LoginCart(enabled: true, credentials: const NullCredentials(), onLoginPressed: (_, __) {});
    final builder = GoldenBuilder.column()..addScenario('LoginCart', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_cart');
  });
}
