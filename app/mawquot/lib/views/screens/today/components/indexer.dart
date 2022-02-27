// Packages
import 'package:flutter/material.dart';

// Models
import 'package:mawquot/models/book_type.dart';

// View Models
import 'package:mawquot/views/models/book_index.dart';

class Indexer extends StatefulWidget {
  final List<BookIndex> bookIndexes;

  const Indexer({
    Key? key, 
    required this.bookIndexes
  }) : super(key: key);

  @override
  _IndexerState createState() => _IndexerState();
}

class _IndexerState extends State<Indexer> {
  BookIndex selectedChoice = BookIndex(
    icon: Icons.list_alt,
    book: BookType(id: 0, name: 'Cover'),
  );

  _buildChoiceList() {
    List<Widget> choices = [];
    for (var bookIndex in widget.bookIndexes) {
      choices.add(
        ChoiceChip(
          avatar: Icon(
            bookIndex.icon,
          ),
          label: Text(bookIndex.book.name),
          selected: selectedChoice == bookIndex,
          onSelected: (bool value) {
            setState(() {
              selectedChoice = bookIndex;
            });
          },
        )
      );
    }
    
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Wrap(
        spacing: 4.0,
        runSpacing: 0.0,
        children: _buildChoiceList(),
      )
    );
  }
}