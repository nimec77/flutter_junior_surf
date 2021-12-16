import 'package:flutter/widgets.dart';
import 'package:flutter_junior_surf/app/route/app_route_bloc.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRouteState> {
  final AppRouteBloc appRouteBloc;

  AppRouteInformationParser(this.appRouteBloc);

  @override
  Future<AppRouteState> parseRouteInformation(RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      appRouteBloc.add(const AppRouteEvent.toUsers());

      return appRouteBloc.stream.first;
    }

    if (uri.pathSegments[0] == '/') {
      appRouteBloc.add(const AppRouteEvent.toUsers());
    } else {
      appRouteBloc.add(const AppRouteEvent.toLogin());
    }

    return appRouteBloc.stream.first;
  }

  @override
  RouteInformation? restoreRouteInformation(AppRouteState configuration) {
    return configuration.map(
      login: (_) => const RouteInformation(location: '/login'),
      users: (_) => const RouteInformation(location: '/'),
    );
  }
}
