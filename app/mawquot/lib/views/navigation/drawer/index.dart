// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerHeader = DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Text(
        'Mawquot',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text(
            'Days',
          ),
          leading: const Icon(Icons.auto_awesome_mosaic),
          onTap: () {
            Navigator.pushNamed(context, '/days');
          },
        ),
        ListTile(
          title: const Text(
            'Books',
          ),
          leading: const Icon(Icons.menu_book),
          onTap: () {
            Navigator.pushNamed(context, '/books');
          },
        ),
        ListTile(
          title: const Text(
            'Chapters',
          ),
          leading: const Icon(Icons.reorder),
          onTap: () {
            Navigator.pushNamed(context, '/chapters');
          },
        ),
        ListTile(
          title: const Text(
            'Settings',
          ),
          leading: const Icon(Icons.settings),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
        ListTile(
          title: const Text(
            'Support',
          ),
          leading: const Icon(Icons.help),
          onTap: () {
            Navigator.pushNamed(context, '/support');
          },
        ),
      ],
    );

    return Drawer(
      child: drawerItems,
    );
  }
}
