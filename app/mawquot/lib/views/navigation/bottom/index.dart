// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Screens
import 'package:mawquot/views/screens/today/index.dart';
import 'package:mawquot/views/screens/reports/index.dart';

// App widgets
import 'package:mawquot/views/navigation/drawer/index.dart';

class NavItemObject {
  Widget screen;
  Icon navIcon;
  String title;
  String label;
  NavItemObject({required this.screen, required this.navIcon, required this.title, required this.label});
}

List<NavItemObject> navItems = [
  NavItemObject(
    screen: const TodayScreen(),
    navIcon: const Icon(Icons.today),
    title: 'Today',
    label: 'Today',
  ),
  NavItemObject(
    screen: const ReportsScreen(),
    navIcon: const Icon(Icons.insert_chart_outlined),
    title: 'Reports',
    label: 'Reports',
  ),
];

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  // Initial screen index for bottom navigator
  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navItems[_screenIndex].title,
        ),
      ),
      body: navItems[_screenIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: navItems
        .map((navItem) => BottomNavigationBarItem(
            icon: navItem.navIcon,
            label: navItem.label,
          ))
        .toList(),
      currentIndex: _screenIndex,
      onTap: (i) => setState(() {
        _screenIndex = i;
      }),
    ),
      drawer: const DrawerNavigator(),
    );
  }
}




