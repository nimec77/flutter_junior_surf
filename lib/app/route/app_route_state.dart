part of 'app_route_bloc.dart';


@freezed
class AppRouteState with _$AppRouteState {
  const factory AppRouteState.login() = AppRouteStateLogin;

  const factory AppRouteState.users() = AppRouteStateUsers;
}