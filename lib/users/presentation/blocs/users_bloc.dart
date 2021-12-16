import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:flutter_junior_surf/users/domain/ports/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';


class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository usersRepository;

  UsersBloc(this.usersRepository) : super(const UsersState.inProgress()) {
    on<UsersEventStarted>(_mapStartedToState);
  }

  Future<void> _mapStartedToState(UsersEventStarted event, Emitter<UsersState> emit) async {
    emit(const UsersState.inProgress());
    final usersEither = await usersRepository.fetchUsers();
    emit(
      usersEither.fold(
        (exception) => UsersState.failure(exception),
        (users) => UsersState.success(users),
      ),
    );
  }
}
