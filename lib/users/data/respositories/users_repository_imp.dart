import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_junior_surf/users/data/constants.dart';
import 'package:flutter_junior_surf/users/data/providers/http_users_provider.dart';
import 'package:flutter_junior_surf/users/domain/ports/users_repository.dart';

class UsersRepositoryImp implements UsersRepository {
  UsersRepositoryImp(this.httpUsersProvider);

  final HttpUsersProvider httpUsersProvider;

  @override
  Future<EitherUsers> fetchUsers() async {
    try {
      final usersPod = await httpUsersProvider.fetchUsers(kUsersUrl);
      return Right(usersPod.map((e) => e.toUser()));
    } on DioError catch (error) {
      return Left(error);
    }
  }
}
