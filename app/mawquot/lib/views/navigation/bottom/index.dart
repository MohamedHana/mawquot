// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Screens
import 'package:mawquot/views/screens/today/index.dart';
import 'package:mawquot/views/screens/reports/index.dart';

// Navigation
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
    title: 'Thursday',
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
  final int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      primary: Theme.of(context).colorScheme.onPrimary
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          navItems[_screenIndex].title,
        ),
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('23-10-2021'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('20-08-1443'),
          ),
        ],
      ),
      body: navItems[_screenIndex].screen,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            TextButton(
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text('Chapter'),
                ],
              ),
              onPressed: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const AddChapterDialog(),
                    fullscreenDialog: true,
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search), 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SearchDialog(),
                    fullscreenDialog: true,
                  ),
                );
              }
            ),
            IconButton(
              icon: const Icon(Icons.low_priority), 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HistoryDialog(),
                    fullscreenDialog: true,
                  ),
                );
              }
            ),
            IconButton(
              icon: const Icon(Icons.history), 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HistoryDialog(),
                    fullscreenDialog: true,
                  ),
                );
              }
            ),
          ],
        ),
      ),
      drawer: const DrawerNavigator(),
    );
  }
}




















class AddBookDialog extends StatelessWidget {
  const AddBookDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add books'),
      ),
      body: const Center(
        child: Text('Add books dialog!'),
      ),
    );
  }
}











class AddChapterDialog extends StatelessWidget {
  const AddChapterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add chapters'),
      ),
      body: const Center(
        child: Text('Add chapters dialog!'),
      ),
    );
  }
}










class SearchDialog extends StatelessWidget {
  const SearchDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: const Center(
        child: Text('Search today'),
      ),
    );
  }
}








class HistoryDialog extends StatelessWidget {
  const HistoryDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: const Center(
        child: Text('Today\'s history'),
      ),
    );
  }
}



class SortDialog extends StatelessWidget {
  const SortDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sort'),
      ),
      body: const Center(
        child: Text('Today\'s Sort'),
      ),
    );
  }
}