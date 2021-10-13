import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:flutter_junior_surf/users/domain/ports/users_repository.dart';
import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../helpers/helpers.dart';

class MockUsersRepository extends Mock implements UsersRepository {}

void main() {
  final exception = Exception('Fetch Exception!');
  final userHelper = UserHelper(seed: 42);
  final mockUsersRepository = MockUsersRepository();
  late final Iterable<User> users;

  setUpAll(() {
    users = userHelper.fakeUsersPod(10).map((e) => e.toUser());
  });

  group('UsersBloc test', () {
    test('Initial state is inProgress', () {
      expect(UsersBloc(mockUsersRepository).state, const UsersState.inProgress());
    });

    blocTest<UsersBloc, UsersState>(
      'emit [inProgress, success] when event stated successful',
      build: () {
        when(mockUsersRepository.fetchUsers).thenAnswer((_) => Future.value(Right(users)));
        return UsersBloc(mockUsersRepository);
      },
      act: (usersBloc) => usersBloc.add(const UsersEvent.started()),
      expect: () => [
        const UsersState.inProgress(),
        UsersState.success(users),
      ],
      verify: (_) => verify(mockUsersRepository.fetchUsers).called(1),
    );

    blocTest<UsersBloc, UsersState>(
      'emit [inProgress, failure] when event started failure',
      build: () {
        when(mockUsersRepository.fetchUsers).thenAnswer((_) => Future.value(Left(exception)));
        return UsersBloc(mockUsersRepository);
      },
      act: (usersBloc) => usersBloc.add(const UsersEvent.started()),
      expect: () => [
        const UsersState.inProgress(),
        UsersState.failure(exception),
      ],
      verify: (_) => verify(mockUsersRepository.fetchUsers).called(1),
    );
  });
}
