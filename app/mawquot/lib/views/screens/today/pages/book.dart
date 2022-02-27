// Packages
import 'package:flutter/material.dart';

// Widgets
import 'package:mawquot/views/screens/today/book_page/presenter.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Prayer',
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.label_outlined,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '7 chapters',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ], 
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.hourglass_bottom,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '3 hours 20 minutes',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ]
                ),
              ],
            ),
          ),
          const Divider(),
          const Presenter(),
        ],
      ),
    );
  }
}