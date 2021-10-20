// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Models
import 'package:mawquot/models/book_type.dart';

// Widgets
import 'package:mawquot/views/screens/books/widgets/list_item.dart';
import 'package:mawquot/views/screens/books/widgets/add_dialog.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  final List<BookType> items = [
    BookType(id:1, name:'Prayer'), 
    BookType(id:2, name:'Quran'),
    BookType(id:3, name:'Azkar'), 
    BookType(id:4, name:'Health'),
    BookType(id:5, name:'Work'), 
    BookType(id:6, name:'Learn'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 80),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(item: items[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AddDialog();
            }
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

