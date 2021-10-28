import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mawquot/views/screens/onboarding/widgets/page_view_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<OnBoardingScreen> {
  void enableRegisterScreen(dynamic context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 10),
      child: IntroductionScreen(
        pages: getPages(),
        onDone: () {
          enableRegisterScreen(context);
        },
        onSkip: () {
          enableRegisterScreen(context);
        },
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Text('Next'),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            activeColor: Theme.of(context).primaryColor,
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    ));
  }
}
