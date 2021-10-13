import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF9B51E0);
const kTitleTextStyle = TextStyle(fontSize: 18, color: Colors.black);
final kBaseTheme = ThemeData.light();
final kAppThemeData = ThemeData(
  primaryColor: kPrimaryColor,
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
  ),
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: kPrimaryColor,
    ),
  ),
  appBarTheme: kBaseTheme.appBarTheme.copyWith(
    titleTextStyle: kTitleTextStyle,
  ),
  scaffoldBackgroundColor: Colors.white
);
