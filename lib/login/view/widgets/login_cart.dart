import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';

import '../../login.dart';


class LoginCart extends StatelessWidget {
  const LoginCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      width: 327,
      height: 348,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: l10n.loginEmailText,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: l10n.loginPasswordText,
              ),
            ),
            const SizedBox(height: 50),
            LoginButton(
              onPressed: () {},
              child: Text(
                l10n.loginButtonText,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
