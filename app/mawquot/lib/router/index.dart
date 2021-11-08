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

import 'package:mawquot/views/screens/support/index.dart';
import 'package:mawquot/views/screens/support_requests/index.dart';
import 'package:mawquot/views/screens/authentication/forgot_password.dart';
import 'package:mawquot/views/screens/authentication/login.dart';
import 'package:mawquot/views/screens/onboarding/index.dart';
import 'package:mawquot/views/screens/authentication/password_changed.dart';
import 'package:mawquot/views/screens/authentication/register.dart';
import 'package:mawquot/views/screens/authentication/reset_password.dart';
import 'package:mawquot/views/screens/authentication/verification_code.dart';


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

  static const String supportRequests = '/support-requests';  
  static const String support = '/support';   
  static const String forgotPassword = '/forgot-password';
  static const String login = '/login';
  static const String onBoarding = '/on-boarding';
  static const String passwordChanged = '/password-changed';
  static const String register = '/register';
  static const String resetPassword = '/reset-password';
  static const String verificationCode = '/verification-code';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    home: (BuildContext context) => const HomeScreen(),
    today: (BuildContext context) => const TodayScreen(),
    reports: (BuildContext context) => const ReportsScreen(),
    days: (BuildContext context) => const DaysScreen(),
    books: (BuildContext context) => const BooksScreen(),
    chapters: (BuildContext context) => const ChaptersScreen(),
    settings: (BuildContext context) => const SettingsScreen(),
    support: (BuildContext context) => const SupportScreen(),
    supportRequests: (BuildContext context) => const SupportRequestsScreen(),
    forgotPassword: (BuildContext context) => const ForgotPasswordScreen(),
    login: (BuildContext context) => const LoginScreen(),
    onBoarding: (BuildContext context) => const OnBoardingScreen(),
    passwordChanged: (BuildContext context) => const PasswordChangedScreen(),
    register: (BuildContext context) => const RegisterScreen(),
    resetPassword: (BuildContext context) => const ResetPasswordScreen(),
    verificationCode: (BuildContext context) => const VerificationcodePage(),
  };
}
