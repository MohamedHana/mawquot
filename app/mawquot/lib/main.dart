import 'package:flutter/material.dart';
import 'package:mawquot/constants/themes.dart';
import 'package:mawquot/constants/strings.dart';
import 'package:mawquot/views/screens/splash/index.dart';

// AppRouter
import 'package:mawquot/router/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: _isDarkMode ? ThemeConfig.dark : ThemeConfig.light,
      home: const SplashScreen(),
      routes: AppRouter.routes,
    );
  }
}