import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';

class ThemeProvider with ChangeNotifier {
  static const String _key = 'theme';
  ThemeData _themeData = darkTheme;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeData get themeData => _themeData;
  bool get isDarkTheme => _themeData == darkTheme;

  set themeData(ThemeData themeData) {
    if (_themeData != themeData) {
      _themeData = themeData;
      _saveTheme();
      notifyListeners();
    }
  }

  void toggleTheme() {
    themeData = _themeData == lightTheme ? darkTheme : lightTheme;
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = _themeData == darkTheme;
    await prefs.setBool(_key, isDark);
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_key) ?? true; // varsayılan olarak açık tema
    _themeData = isDark ? darkTheme : lightTheme;
    notifyListeners();
  }
}
