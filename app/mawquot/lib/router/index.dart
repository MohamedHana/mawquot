import 'package:flutter/material.dart';

// Screens
import 'package:mawquot/views/screens/splash/index.dart';
import 'package:mawquot/views/screens/home/index.dart';
import 'package:mawquot/views/screens/today/index.dart';
import 'package:mawquot/views/screens/reports/index.dart';
import 'package:mawquot/views/screens/days/index.dart';
import 'package:mawquot/views/screens/books/index.dart';
import 'package:mawquot/views/screens/chapters/index.dart';
import 'package:mawquot/views/screens/settings/index.dart';

class AppRouter {
  // Routes mapping
  static const String splash = '/splash';
  static const String home = '/home';
  static const String today = '/today';
  static const String reports = '/reports';
  static const String days = '/days';
  static const String books = '/books';
  static const String chapters = '/chapters';
  static const String settings = '/settings';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    home: (BuildContext context) => const HomeScreen(),
    today: (BuildContext context) => const TodayScreen(),
    reports: (BuildContext context) => const ReportsScreen(),
    days: (BuildContext context) => const DaysScreen(),
    books: (BuildContext context) => const BooksScreen(),
    chapters: (BuildContext context) => const ChaptersScreen(),
    settings: (BuildContext context) => const SettingsScreen(),
  };
}