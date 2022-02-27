// Packages
import 'package:flutter/material.dart';

// Navigation
import 'package:mawquot/views/navigation/drawer/index.dart';

// Screen components
import 'package:mawquot/views/screens/today/components/top_bar.dart';
import 'package:mawquot/views/screens/today/components/body.dart';
import 'package:mawquot/views/screens/today/components/bottom_bar.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(),
      body: Body(),
      bottomNavigationBar: BottomBar(),
      drawer: DrawerNavigator(),
    );
  }
}
