import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade400,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(inversePrimary: Colors.black));
