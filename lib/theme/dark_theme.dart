import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey.shade700,
  scaffoldBackgroundColor: Colors.black,
  cardTheme: CardTheme(color: Colors.grey.shade600),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
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
      backgroundColor: Colors.grey.shade800,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade800,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade500),
    ),
    labelStyle: TextStyle(color: Colors.white),
    hintStyle: TextStyle(color: Colors.grey.shade500),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.grey.shade300),
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.grey.shade300),
  ),
  iconTheme: IconThemeData(color: Colors.grey.shade400),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey.shade600,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.grey.shade700),
    trackColor: WidgetStateProperty.all(Colors.grey.shade600),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(Colors.grey.shade700),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.all(Colors.grey.shade700),
  ),
);
