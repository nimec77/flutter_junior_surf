// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/app/constants.dart';
import 'package:flutter_junior_surf/app/route/app_route_bloc.dart';
import 'package:flutter_junior_surf/app/route/app_route_information_parser.dart';
import 'package:flutter_junior_surf/app/route/app_router_delegate.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/data/providers/auth_provider.dart';
import 'package:flutter_junior_surf/login/data/repositories/auth_repository_imp.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthBloc _authBloc;
  late final AppRouteBloc _appRouteBloc;
  late final AppRouterDelegate _appRouterDelegate;
  late final AppRouteInformationParser _appRouteInformationParser;

  @override
  void initState() {
    _authBloc = AuthBloc(AuthRepositoryImp(AuthProvider()));
    _appRouteBloc = AppRouteBloc(_authBloc);
    _appRouterDelegate = AppRouterDelegate(_appRouteBloc);
    _appRouteInformationParser = AppRouteInformationParser(_appRouteBloc);
    _appRouteBloc.add(const AppRouteEvent.toUsers());
    super.initState();
  }

  @override
  void dispose() {
    _appRouteBloc.close();
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: kAppThemeData,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routerDelegate: _appRouterDelegate,
        routeInformationParser: _appRouteInformationParser,
      ),
    );
  }
}
