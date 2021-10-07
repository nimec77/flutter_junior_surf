import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_junior_surf/login/domain/ports/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final authProvider = AuthProvider();

  group('AuthProvider test', () {
    test('login test', () async {
      final result = await authProvider.login('email', 'password');
      expect(result, isA<EitherBool>());
      expect(result.isRight(), equals(true));
      expect(result | false, equals(true));
    });

    test('logout test', () async {
      final result = authProvider.logout();
      expect(result, isA<Future<void>>());
    });
  });
}