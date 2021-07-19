import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/view/common_widget/login_background.dart';
import 'package:flutter_junior_surf/login/view/renders/measurable_widget.dart';

import '../../login.dart';
import '../helper.dart' as helper;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double _top;
  late Size _cartSize;
  late double _bottom;

  @override
  void initState() {
    super.initState();
    _top = kDefaultTop;
    _cartSize = Size.zero;
    _bottom = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final newBottom = MediaQuery.of(context).viewInsets.bottom;
    if (newBottom != _bottom) {
      setState(() {
        _bottom = newBottom;
        _top = _calcTopForLoginCart(_cartSize, _bottom);
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
            child: MeasurableWidget(
              onChange: (size) => setState(() {
                _cartSize = size;
              }),
              child: const LoginCart(),
            ),
          ),
        ],
      ),
    );
  }

  double _calcTopForLoginCart(Size cartSize, double bottom) {
    debugPrint('LoginCart size:$cartSize');
    // final newBottom = MediaQuery.of(context).viewInsets.bottom;
    // debugPrint('Bottom:$bottom, $newBottom');
    final size = helper.getSize(context);
    if (size == Size.zero) {
      return kDefaultTop;
    }

    final height = size.height - bottom - kDefaultTop;
    if (height < cartSize.height) {
      final top = size.height - cartSize.height - kBottomMargin - bottom;
      // debugPrint('Top:$top');
      return top;
    }

    return kDefaultTop;
  }
}
