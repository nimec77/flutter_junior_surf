import 'package:flutter/material.dart';

class UsersInProgress extends StatelessWidget {
  final double? value;

  const UsersInProgress({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(value: value),
      ),
    );
  }
}
