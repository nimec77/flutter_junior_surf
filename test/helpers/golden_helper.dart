import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/app/constants.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:sizer/sizer.dart';

WidgetWrapper sizerAppWrapper() {
  return (child) => Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: kAppThemeData,
          home: Material(child: child),
        ),
      );
}
