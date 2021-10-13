import 'package:flutter/material.dart';

class UsersInProgress extends StatelessWidget {
  const UsersInProgress({Key? key, this.value}) : super(key: key);

  final double? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(value: value),
      ),
    );
  }
}
