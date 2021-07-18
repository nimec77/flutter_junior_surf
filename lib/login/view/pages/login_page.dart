import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/view/common_widget/login_background.dart';

import '../../login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final view = MediaQuery.of(context).viewInsets;
    debugPrint(view.bottom.toString());
    return Scaffold(
      backgroundColor: kLoginBackgroundColor,
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          LoginBackground(text: l10n.loginPageText),
          const Positioned(
            top: 200,
            child: Align(
              alignment: Alignment.center,
              child: LoginCart(),
            ),
          ),
        ],
      ),
    );
  }
}
