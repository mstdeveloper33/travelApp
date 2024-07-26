import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey.shade700,
  scaffoldBackgroundColor: Colors.black,
  cardTheme: CardTheme(color: Colors.black),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
  ),
  colorScheme: ColorScheme.dark(
    inversePrimary: Colors.white,
    surface: Colors.black,
    primary: Colors.grey.shade700,
    inverseSurface: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.white),
      backgroundColor:
          Colors.grey.shade800, // Koyu temada buton arka plan rengi
    ),
  ),
);
