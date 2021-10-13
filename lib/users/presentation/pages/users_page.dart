import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_failure.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_in_progress.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/users_list.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key, required this.authBloc}) : super(key: key);

  final AuthBloc authBloc;

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final _usersBloc = UsersBloc();
  UsersState _state = const UsersState.inProgress();

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
          _state = state;
          return state.map(
            inProgress: (_) => const UsersInProgress(),
            success: (users) => UsersList(authBloc: widget.authBloc),
            failure: (_) => const UsersFailure(),
          );
        },
      ),
    );
  }
}
