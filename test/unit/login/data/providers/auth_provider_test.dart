import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final authProvider = AuthProvider();

  group('AuthProvider test', () {
    test('login test', () async {
      final result = await authProvider.login('email', 'password');
      expect(result, isA<bool>());
      expect(result, true);
    });

    test('logout test', () async {
      final result = authProvider.logout();
      expect(result, isA<Future<void>>());
    });
  });
}