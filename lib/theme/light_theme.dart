import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.grey.shade400,
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(color: Colors.grey.shade400),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade400,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  ),
  drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade100),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.black),
      backgroundColor: Colors.grey.shade500,
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade400,
    surface: Colors.grey.shade300,
    onPrimary: Colors.black,
    onSurface: Colors.black87,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade200,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey.shade500),
    ),
    labelStyle: TextStyle(color: Colors.black),
    hintStyle: TextStyle(color: Colors.grey.shade600),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.grey.shade800),
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.grey.shade800),
  ),
  iconTheme: IconThemeData(color: Colors.grey.shade800),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey.shade600,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.grey.shade400),
    trackColor: WidgetStateProperty.all(Colors.grey.shade300),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(Colors.grey.shade400),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.all(Colors.grey.shade400),
  ),
);
