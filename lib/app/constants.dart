import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF9B51E0);

final kAppThemeData = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
  ),
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: kPrimaryColor,
    ),
  ),
);
