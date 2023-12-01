import 'package:booka_service_app/core/theme/constant.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = true;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeData getTheme() {
    return _isDarkMode ? _darkTheme : _lightTheme;
  }

  static final ThemeData _darkTheme = ThemeData(
    // Dark Mode
    primaryColor: AppConstants.kColorFluffy,
    scaffoldBackgroundColor: AppConstants.kLightModeColorClean,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: AppConstants.kColorWater),
  );

  static final ThemeData _lightTheme = ThemeData(
    // Light Mode
    primaryColor: AppConstants.kLightModeColorFluffy,
    scaffoldBackgroundColor: AppConstants.kColorClean,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: AppConstants.kLightModeColorWater),
  );
}
