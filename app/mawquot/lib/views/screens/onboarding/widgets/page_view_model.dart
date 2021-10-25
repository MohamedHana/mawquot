import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mawquot/constants/images.dart';

List<PageViewModel> getPages() {
  return [
    PageViewModel(
      image: Image.asset(Images.onBoarding1, width: 250.0, height: 250.0),
      title: "Mawquot",
      body: "Control your time",
      footer: const Text(""),
    ),
    PageViewModel(
      image: Image.asset(Images.onBoarding2, width: 250.0, height: 250.0),
      title: "Mawquot",
      body: "Plan your day",
      footer: const Text(""),
    ),
    PageViewModel(
      image: Image.asset(Images.onBoarding3, width: 250.0, height: 250.0),
      title: "Mawquot",
      body: "Organize your tasks",
      footer: const Text(""),
    ),
    PageViewModel(
      image: Image.asset(Images.onBoarding4, width: 250.0, height: 250.0),
      title: "Mawquot",
      body: "Track your productivity",
      footer: const Text(""),
    ),
  ];
}
