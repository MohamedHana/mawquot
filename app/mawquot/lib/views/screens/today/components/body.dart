// Packages
import 'package:flutter/material.dart';

// Models
import 'package:mawquot/models/book_type.dart';

// View Models
import 'package:mawquot/views/models/book_index.dart';

// Screen components
import 'package:mawquot/views/screens/today/components/pager.dart';
import 'package:mawquot/views/screens/today/components/indexer.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BookIndex> _bookIndexes = [
      BookIndex(
        icon: Icons.list_alt,
        book: BookType(id: 0, name: 'Cover'),
      ), 
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Prayer'),
      ), 
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Quran'),
      ),
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Azkar'),
      ),
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Work'),
      ),
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Fitness'),
      ),
      BookIndex(
        icon: Icons.menu_book,
        book: BookType(id: 2, name: 'Health'),
      ),
    ];

    Indexer _bookIndexer = Indexer(bookIndexes: _bookIndexes);

    return Scaffold(
      body: Column(
        children: const <Widget>[
          Expanded(
            child: Pager(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _bookIndexer,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.expand_less), 
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    // Using Wrap makes the bottom sheet height the height of the content.
                    // Otherwise, the height will be half the height of the screen.
                    return Wrap(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                trailing: const Icon(Icons.expand_more),
                                title: const Text('Today books'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              _bookIndexer,
                            ],
                          )
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}