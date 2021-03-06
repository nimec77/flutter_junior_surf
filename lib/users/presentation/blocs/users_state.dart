part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.inProgress() = UsersStateInProgress;

  const factory UsersState.success(Iterable<User> users) = UsersStateSuccess;

  const factory UsersState.failure(Exception exception) = UsersStateFailure;
}