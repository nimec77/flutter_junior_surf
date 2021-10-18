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
import 'package:flutter_junior_surf/login/data/providers/credentials_provider.dart';
import 'package:flutter_junior_surf/login/data/repositories/auth_repository_imp.dart';
import 'package:flutter_junior_surf/login/data/repositories/credentials_repository_imp.dart';
import 'package:flutter_junior_surf/login/domain/entities/app_user.dart';
import 'package:flutter_junior_surf/login/domain/ports/credentials_repository.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_load_use_case.dart';
import 'package:flutter_junior_surf/login/domain/use_cases/credentials_save_use_case.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_and_password_validators.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/credentials_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppUser _appUser;
  late final AuthBloc _authBloc;
  late final AppRouteBloc _appRouteBloc;
  late final AppRouterDelegate _appRouterDelegate;
  late final AppRouteInformationParser _appRouteInformationParser;
  late final CredentialsRepository _credentialsRepository;
  late final CredentialsBloc _credentialsBloc;

  @override
  void initState() {
    _credentialsRepository = CredentialsRepositoryImp(CredentialsProvider());
    final credentialsSaveUseCase = CredentialsSaveUseCase(credentialsRepository: _credentialsRepository);
    final credentialsLoadUseCase = CredentialsLoadUseCase(credentialsRepository: _credentialsRepository);
    _credentialsBloc = CredentialsBloc(
      credentialsLoadUseCase: credentialsLoadUseCase,
      credentialsSaveUseCase: credentialsSaveUseCase,
    );
    _appUser = AppUser(
      authRepository: AuthRepositoryImp(AuthProvider()),
      credentialsSaveUseCase: credentialsSaveUseCase,
    );
    _authBloc = AuthBloc(_appUser);
    _appRouteBloc = AppRouteBloc(authBloc: _authBloc, credentialsBloc: _credentialsBloc);
    _appRouterDelegate = AppRouterDelegate(_appRouteBloc);
    _appRouteInformationParser = AppRouteInformationParser(_appRouteBloc);
    _appRouteBloc.add(const AppRouteEvent.toUsers());
    super.initState();
  }

  @override
  void dispose() {
    _appRouteBloc.close();
    _authBloc.close();
    _appUser.dispose();
    _credentialsBloc.close();
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
