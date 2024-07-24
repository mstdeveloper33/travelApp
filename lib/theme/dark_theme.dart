import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  cardTheme: CardTheme(color: Colors.blueAccent.shade100),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
  ),
  colorScheme: ColorScheme.dark(
      inversePrimary: Colors.white,
      surface: Colors.black,
      primary: Colors.grey.shade700,
      inverseSurface: Colors.black),
);
