import 'package:flutter/material.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = darkTheme;
  ThemeData get themeData => _themeData;
  bool get isDarkTheme => _themeData == darkTheme;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }
  }
}
