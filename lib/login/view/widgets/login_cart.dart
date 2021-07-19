import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/view/notifications/login_cart_notification.dart';

import '../../login.dart';
import '../helper.dart' as helper;

class LoginCart extends StatefulWidget {
  const LoginCart({Key? key}) : super(key: key);

  @override
  State<LoginCart> createState() => _LoginCartState();
}

class _LoginCartState extends State<LoginCart> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      final size = helper.getSize(context);
      if (size != Size.zero) {
        LoginCartNotification(size).dispatch(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 327,
        height: 348,
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
