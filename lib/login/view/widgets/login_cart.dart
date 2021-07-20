import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:sizer/sizer.dart';

import '../../login.dart';

class LoginCart extends StatefulWidget {
  const LoginCart({Key? key}) : super(key: key);

  @override
  State<LoginCart> createState() => _LoginCartState();
}

class _LoginCartState extends State<LoginCart> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 87.w,
        height: 52.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: l10n.loginEmailText,
              ),
            ),
            SizedBox(height: 5.h),
            TextField(
              decoration: InputDecoration(
                labelText: l10n.loginPasswordText,
              ),
            ),
            SizedBox(height: 7.h),
            LoginButton(
              onPressed: () {},
              child: Text(
                l10n.loginButtonText,
                style: TextStyle(fontSize: 13.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
