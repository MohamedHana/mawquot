// Packages
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      primary: Theme.of(context).colorScheme.onPrimary
    );

    return AppBar(
      title: const Text(
        'Thursday',
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}