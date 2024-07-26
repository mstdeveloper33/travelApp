import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.grey.shade400,
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(color: Colors.white),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade400,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  ),
  drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade100),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.black),
      backgroundColor:
          Colors.grey.shade500, // Açık temada buton arka plan rengi
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade400,
    surface: Colors.grey.shade300,
    onPrimary: Colors.black,
    onSurface: Colors.black87,
  ),
);
