import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_junior_surf/app/app.dart';
import 'package:flutter_junior_surf/app/app_bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(() {
    FlutterError.onError = (details) {
      log(details.exceptionAsString(), stackTrace: details.stack);
    };
    runApp(const App());
  },
    blocObserver: AppBlocObserver(),
  );
}
