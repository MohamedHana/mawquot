// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Widgets
import 'package:mawquot/views/screens/today/pages/cover.dart';
import 'package:mawquot/views/screens/today/pages/book.dart';

class Pager extends StatefulWidget {
  const Pager({Key? key}) : super(key: key);

  @override
  _PagerState createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 1);

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Cover(),
        Book(),
        Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}