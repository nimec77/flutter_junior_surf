import 'package:bloc/bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/credentials_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_route_bloc.freezed.dart';
part 'app_route_event.dart';
part 'app_route_state.dart';

class AppRouteBloc extends Bloc<AppRouteEvent, AppRouteState> {
  final AuthBloc authBloc;
  final CredentialsBloc credentialsBloc;

  AppRouteBloc({required this.authBloc, required this.credentialsBloc}) : super(const AppRouteState.users()) {
    authBloc.stream.listen((state) {
      if (state is AuthStateSuccess) {
        add(const AppRouteEvent.toUsers());
      } else if (state is AuthStateFailed || state is AuthStateNotAuthorized) {
        add(const AppRouteEvent.toLogin());
      }
    });
    on<AppRouteEventToLogin>(_mapToLoginToState);
    on<AppRouteEventToUsers>(_mapToUsersToState);
  }

  Future<void> _mapToLoginToState(AppRouteEventToLogin event, Emitter<AppRouteState> emit) async {
    _authStateToAppState(emit);
  }

  void _authStateToAppState(Emitter<AppRouteState> emit) {
    if (authBloc.state is AuthStateSuccess) {
      emit(const AppRouteState.users());
    } else if (authBloc.state is AuthStateFailed || authBloc.state is AuthStateNotAuthorized) {
      emit(const AppRouteState.login());
    }
  }

  Future<void> _mapToUsersToState(AppRouteEventToUsers event, Emitter<AppRouteState> emit) async {
    _authStateToAppState(emit);
  }

}
