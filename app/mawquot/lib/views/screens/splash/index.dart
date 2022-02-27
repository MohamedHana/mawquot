// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart' as splash_screen_package;

// Screens
import 'package:mawquot/views/screens/onboarding/index.dart';
// import 'package:mawquot/views/screens/today/index.dart';
// import 'package:mawquot/views/screens/home/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Launching the app
  Future<Widget> launchFuture() async {
    // [TO-DO] Implement the app's launch business logic
    await Future.delayed(const Duration(seconds: 1));

    return Future.value(const OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return splash_screen_package.SplashScreen(
      navigateAfterFuture: launchFuture(),
      title: const Text(
        'Mawquot',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 40,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.green,
      loaderColor: Colors.white,
    );
  }
}
