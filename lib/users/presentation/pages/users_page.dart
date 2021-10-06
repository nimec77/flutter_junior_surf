import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key, required this.authBloc}) : super(key: key);

  final AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Users Page', style: Theme.of(context).textTheme.headline3),
            ElevatedButton(
              onPressed: () => authBloc.add(const AuthEvent.logout()),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
