import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const _themeKey = 'theme_key';

  // Temayı sakla
  static Future<void> setTheme(String theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, theme);
  }

  // Saklanan temayı oku
  static Future<String?> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_themeKey);
  }
}
