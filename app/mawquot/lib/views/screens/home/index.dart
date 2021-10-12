// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// App widgets
import 'package:mawquot/views/navigation/bottom/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavigator();
  }
}