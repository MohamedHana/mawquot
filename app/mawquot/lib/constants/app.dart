// Packages
import 'package:flutter/material.dart';

// App enums
enum DayStartMethods { blank, previousDay }
enum AppThemeMode { light, dark }
enum gender { male, female }

class AppConstants {
  // Settings
  static const dayStartMethod = DayStartMethods.previousDay;
  static const dayStartTime = TimeOfDay(hour: 6, minute: 00);
  static const themeMode = AppThemeMode.light;
}