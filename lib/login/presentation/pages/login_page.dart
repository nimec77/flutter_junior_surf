import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/credentials_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/common_widget/login_background.dart';
import 'package:flutter_junior_surf/login/presentation/constants.dart';
import 'package:flutter_junior_surf/login/presentation/widgets/login_cart.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.authBloc, required this.credentialsBloc}) : super(key: key);

  final AuthBloc authBloc;
  final CredentialsBloc credentialsBloc;

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
    widget.credentialsBloc.add(const CredentialsEvent.loaded());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
            child: BlocBuilder<CredentialsBloc, CredentialsState>(
              bloc: widget.credentialsBloc,
              builder: (context, state) {
                final credentials = state.when(
                  loadSuccess: (value) => value,
                  loadFailure: (_) => const NullCredentials(),
                );
                return BlocBuilder<AuthBloc, AuthState>(
                  bloc: widget.authBloc,
                  builder: (context, state) {
                    final enabled = state.maybeMap(
                      notAuthorized: (_) => true,
                      failed: (_) => true,
                      orElse: () => false,
                    );
                    return LoginCart(
                        enabled: enabled,
                        credentials: credentials,
                        onLoginPressed: (email, password) {
                          widget.authBloc.add(AuthEvent.loginStarted(Credentials(email: email, password: password)));
                        });
                  },
                );
              },
            ),
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
