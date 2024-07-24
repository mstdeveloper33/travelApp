import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
  ),
  colorScheme: ColorScheme.dark(
      inversePrimary: Colors.white,
      surface: Colors.black,
      primary: Colors.grey.shade700,
      inverseSurface: Colors.black),
);
