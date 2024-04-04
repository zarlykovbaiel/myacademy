import 'package:flutter/material.dart';

final blueTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff3498DB),
  appBarTheme: const AppBarTheme(
    color: Color(0xff3498DB),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff3498DB),
    ),
  ),
);
