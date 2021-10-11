import 'package:dio/dio.dart';
import 'package:flutter_junior_surf/users/data/providers/http_users_provider.dart';
import 'package:flutter_junior_surf/users/data/respositories/users_repository_imp.dart';
import 'package:flutter_junior_surf/users/domain/ports/users_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockHttpUserProvider extends Mock implements HttpUsersProvider {}

void main() {
  final userHelper = UserHelper(seed: 42);
  final mockHttpUserProvider = MockHttpUserProvider();
  final usersRepository = UsersRepositoryImp(mockHttpUserProvider);

  group('UserRepositoryImp test', () {
    test('fetchUsers successful test', () async {
      final usersPod = userHelper.fakeUsersPod(10);
      when(() => mockHttpUserProvider.fetchUsers(any())).thenAnswer((_) => Future.value(usersPod));

      final result = await usersRepository.fetchUsers();
      expect(result, isA<EitherUsers>());
      expect(result.isRight(), true);
      expect(result | [], usersPod.map((e) => e.toUser()));
    });

    test('fetchUsers failure test', () async {
      final dioError = DioError(requestOptions: RequestOptions(path: 'path'));
      when(() => mockHttpUserProvider.fetchUsers(any())).thenThrow(dioError);

      final result = await usersRepository.fetchUsers();
      expect(result, isA<EitherUsers>());
      expect(result.isLeft(), true);
      result.leftMap((l) {
        expect(l, dioError);
      });
    });
  });
}
