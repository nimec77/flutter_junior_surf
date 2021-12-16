//ignore_for_file: one_member_abstracts
import 'package:dartz/dartz.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';

typedef EitherUsers = Either<Exception, Iterable<User>>;

abstract class UsersRepository {
  Future<EitherUsers> fetchUsers();
}