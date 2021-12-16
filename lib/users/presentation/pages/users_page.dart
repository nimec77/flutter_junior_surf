import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/users/data/providers/http_users_provider.dart';
import 'package:flutter_junior_surf/users/data/respositories/users_repository_imp.dart';
import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_failure.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_in_progress.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_list.dart';

class UsersPage extends StatefulWidget {
  final AuthBloc authBloc;

  const UsersPage({required this.authBloc, Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final _usersBloc = UsersBloc(UsersRepositoryImp(HttpUsersProvider()));

  @override
  void initState() {
    _usersBloc.add(const UsersEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    _usersBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: BlocBuilder<UsersBloc, UsersState>(
        bloc: _usersBloc,
        builder: (context, state) {
          return state.when(
            inProgress: () => const UsersInProgress(),
            success: (users) => UsersList(authBloc: widget.authBloc, users: users),
            failure: (_) => UsersFailure(usersBloc: _usersBloc),
          );
        },
      ),
    );
  }
}
