import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xff100B20),
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    toolbarHeight: 50,
    elevation: 0,
    backgroundColor: Color(0xff100B20),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    toolbarHeight: 50,
    elevation: 0,
    backgroundColor: Colors.white,
  ),
);
