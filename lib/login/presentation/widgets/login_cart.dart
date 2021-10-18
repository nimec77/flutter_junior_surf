import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_button.dart';
import 'package:flutter_junior_surf/login/presentation/constants.dart';
import 'package:sizer/sizer.dart';

typedef OnLoginPressed = void Function(String email, String password);

class LoginCart extends StatefulWidget with EmailAndPasswordValidators {
  LoginCart({Key? key, required this.enabled, required this.credentials, required this.onLoginPressed})
      : super(key: key);

  final bool enabled;
  final Credentials credentials;
  final OnLoginPressed onLoginPressed;

  @override
  State<LoginCart> createState() => _LoginCartState();
}

class _LoginCartState extends State<LoginCart> {
  final _loginFormKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  var _emailFirstEnter = true;
  var _passwordFirstEnter = true;

  @override
  void initState() {
    debugPrint(widget.credentials.toString());
    if (widget.credentials is! NullCredentials) {
      _emailController = TextEditingController(text: widget.credentials.email);
      _passwordController = TextEditingController(text: widget.credentials.password);
    } else {
      _emailController = TextEditingController();
      _passwordController = TextEditingController();
    }
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

    return Form(
      key: _loginFormKey,
      child: SingleChildScrollView(
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
                TextFormField(
                  key: kLoginEmailKey,
                  enabled: widget.enabled,
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: l10n.loginEmailText,
                  ),
                  validator: (value) {
                    if (_emailFirstEnter) {
                      return null;
                    }
                    return !widget.emailValidator.isValid(value) ? l10n.loginEmailError : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _emailFirstEnter = false;
                    });
                  },
                  onEditingComplete: () {
                    final nextWidget =
                        widget.emailValidator.isValid(_emailController.text) ? _passwordFocusNode : _emailFocusNode;
                    FocusScope.of(context).requestFocus(nextWidget);
                  },
                ),
                SizedBox(height: 5.h),
                TextFormField(
                  key: kLoginPasswordKey,
                  enabled: widget.enabled,
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  autocorrect: false,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: l10n.loginPasswordText,
                  ),
                  validator: (value) {
                    if (_passwordFirstEnter) {
                      return null;
                    }
                    return !widget.passwordValidator.isValid(value) ? l10n.loginPasswordError : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _passwordFirstEnter = false;
                    });
                  },
                ),
                SizedBox(height: 7.5.h),
                LoginButton(
                  key: kLoginButtonKey,
                  enabled: widget.enabled && _formIsValidated(),
                  onPressed: () => widget.onLoginPressed(_emailController.text, _passwordController.text),
                  child: Text(
                    l10n.loginButtonText,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _formIsValidated() {
    final form = _loginFormKey.currentState;
    if (form == null) {
      return false;
    }

    return form.validate() && !_emailFirstEnter && !_passwordFirstEnter;
  }
}
