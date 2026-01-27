import 'package:flutter/material.dart';
import 'package:full_food_delivery/themes/dark_mode.dart';
import 'package:full_food_delivery/themes/light_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late SharedPreferences _prefs;
  ThemeData _themeData = lightMode;

  ThemeProvider(SharedPreferences prefs) {
    _prefs = prefs;
    _loadTheme();
  }

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    _saveTheme();
    notifyListeners();
  }

  void _loadTheme() {
    bool isDark = _prefs.getBool('isDarkMode') ?? false;
    _themeData = isDark ? darkMode : lightMode;
    notifyListeners();
  }

  void _saveTheme() {
    _prefs.setBool('isDarkMode', _themeData == darkMode);
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
