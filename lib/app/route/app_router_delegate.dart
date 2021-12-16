//ignore_for_file: prefer_mixin

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_junior_surf/app/route/app_route_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/pages/login_page.dart';
import 'package:flutter_junior_surf/users/presentation/pages/users_page.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouteState> {

  final AppRouteBloc appRouteBloc;
  late final StreamSubscription _appRouteBlocSubscription;

  @override
  GlobalKey<NavigatorState> navigatorKey;

  @override
  AppRouteState get currentConfiguration => _state;

  var _state = const AppRouteState.users();

  AppRouterDelegate(this.appRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    _appRouteBlocSubscription = appRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _appRouteBlocSubscription.cancel();
    super.dispose();
  }

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
          //ignore: avoid_annotating_with_dynamic
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

  @override
  Future<void> setNewRoutePath(AppRouteState configuration) async {
    _state = configuration;
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
}
