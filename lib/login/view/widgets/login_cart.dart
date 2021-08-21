import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/login.dart';
import 'package:sizer/sizer.dart';

class LoginCart extends StatefulWidget {
  const LoginCart({Key? key}) : super(key: key);

  @override
  State<LoginCart> createState() => _LoginCartState();
}

class _LoginCartState extends State<LoginCart> {
  late final ScrollController _scrollController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: kLoginCartSize.width.w,
          height: kLoginCartSize.height.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                key: kLoginEmailKey,
                decoration: InputDecoration(
                  labelText: l10n.loginEmailText,
                ),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 5.h),
              TextField(
                key: kLoginPasswordKey,
                decoration: InputDecoration(
                  labelText: l10n.loginPasswordText,
                ),
                autocorrect: false,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 7.5.h),
              LoginButton(
                key: kLoginButtonKey,
                child: Text(
                  l10n.loginButtonText,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
