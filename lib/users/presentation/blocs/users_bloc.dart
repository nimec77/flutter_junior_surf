import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'users_event.dart';

part 'users_state.dart';

part 'users_bloc.freezed.dart';

typedef EitherUsers = Either<Exception, Iterable<User>>;

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersState.inProgress()) {
    on<UsersEventStarted>(_mapStartedToState);
  }

  Future<void> _mapStartedToState(UsersEventStarted event, Emitter<UsersState> emit) async {
    emit(UsersState.failure(Exception()));
  }
}
