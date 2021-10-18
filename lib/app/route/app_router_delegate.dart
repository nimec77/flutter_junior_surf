import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_junior_surf/app/route/app_route_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/pages/login_page.dart';
import 'package:flutter_junior_surf/users/presentation/pages/users_page.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouteState> {
  AppRouterDelegate(this.appRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    _appRouteBlocSubscription = appRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  @override
  GlobalKey<NavigatorState> navigatorKey;

  final AppRouteBloc appRouteBloc;
  late final StreamSubscription _appRouteBlocSubscription;
  var _state = const AppRouteState.users();

  @override
  void dispose() {
    _appRouteBlocSubscription.cancel();
    super.dispose();
  }

  @override
  AppRouteState get currentConfiguration => _state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppRouteBloc, AppRouteState>(
      bloc: appRouteBloc,
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: state.map(
            login: _loginScreenPage,
            users: _usersScreenPage,
          ),
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }
            return true;
          },
        );
      },
    );
  }

  List<Page<void>> _loginScreenPage(AppRouteState state) {
    return [
      MaterialPage<void>(
        key: const ValueKey('LoginScreen'),
        child: LoginPage(
          authBloc: appRouteBloc.authBloc,
          credentialsBloc: appRouteBloc.credentialsBloc,
        ),
      ),
    ];
  }

  List<Page<void>> _usersScreenPage(AppRouteState state) {
    return [
      MaterialPage<void>(
        key: const ValueKey('UsersScreen'),
        child: UsersPage(authBloc: appRouteBloc.authBloc),
      ),
    ];
  }

  @override
  Future<void> setNewRoutePath(AppRouteState configuration) async {
    _state = configuration;
  }
}
