import 'package:flutter/material.dart';

class UsersInProgress extends StatelessWidget {
  const UsersInProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
