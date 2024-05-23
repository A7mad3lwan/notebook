import 'package:flutter/material.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xff100B20),
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    toolbarHeight: 55,
    elevation: 0,
    backgroundColor: Color(0xff100B20),
    toolbarTextStyle: FontStyles.font20,
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    toolbarHeight: 55,
    elevation: 0,
    backgroundColor: Colors.white,
    toolbarTextStyle: FontStyles.font20,
  ),
);
