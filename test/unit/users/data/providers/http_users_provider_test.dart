import 'package:flutter_junior_surf/users/data/providers/http_users_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final httpUsersProvider = HttpUsersProvider();

  group('HttpUserProvider test', () {
    test('fetchUsers test', () async {
      final result = await httpUsersProvider.fetchUsers('https://jsonplaceholder.typicode.com/users');
      print(result);
    });
  });
}
