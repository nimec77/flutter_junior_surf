import 'package:flutter_junior_surf/login/data/providers/credentials_provider.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final credentialsProvider = CredentialsProvider();

  setUpAll(() async {
    await credentialsProvider.init();
  });

  group('CredentialsProvider test', () {
    test('loadCredentials test', () async {
      const credentials = Credentials(email: 'email', password: 'password');
      await credentialsProvider.saveCredentials(credentials);
      final result = credentialsProvider.loadCredentials();
      expect(result, credentials);
    });

    test('saveCredentials test', () async {
      final result = await credentialsProvider.saveCredentials(const NullCredentials());
      expect(result, true);
    });
  });
}