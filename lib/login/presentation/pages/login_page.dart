import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/login.dart';
import 'package:sizer/sizer.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double _top;
  late double _bottom;

  @override
  void initState() {
    _top = kDefaultTop.h;
    _bottom = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final newBottom = MediaQuery.of(context).viewInsets.bottom;
    if (newBottom != _bottom) {
      setState(() {
        _bottom = newBottom;
        _top = _calcTopForLoginCart(_bottom);
      });
    }
    return Scaffold(
      backgroundColor: kLoginBackgroundColor,
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          LoginBackground(text: l10n.loginPageText),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: _top),
            child: LoginCart(),
          ),
        ],
      ),
    );
  }

  double _calcTopForLoginCart(double bottom) {
    final cartHeight = kLoginCartSize.height.h;
    final height = 100.h - kBottomMargin.h - kDefaultTop.h - bottom;
    if (height < kLoginCartSize.height.h) {
      final top = 100.h - cartHeight - kBottomMargin.h - bottom;
      return top;
    }

    return kDefaultTop.h;
  }
}
