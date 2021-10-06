part of 'app_route_bloc.dart';

@freezed
class AppRouteEvent with _$AppRouteEvent {
  const factory AppRouteEvent.toLogin() = AppRouteEventToLogin;

  const factory AppRouteEvent.toUsers() = AppRouteEventToUsers;
}