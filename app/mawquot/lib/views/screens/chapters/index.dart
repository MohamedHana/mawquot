// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Constants

// Widgets
import 'package:mawquot/views/screens/chapters/widgets/list_item.dart';
import 'package:mawquot/views/screens/chapters/widgets/add_dialog.dart';
// Models
import 'package:mawquot/models/book_type.dart';
import 'package:mawquot/models/chapter_type.dart';

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  
  final List<ChapterType> items = [
    ChapterType(id: 1, name: 'Fajr', book: BookType(id: 1, name: 'Prayer')),
    ChapterType(id: 1, name: 'Duhur', book: BookType(id: 1, name: 'Prayer')),
    ChapterType(id: 1, name: 'Asr', book: BookType(id: 1, name: 'Prayer')),
    ChapterType(id: 1, name: 'Maghrib', book: BookType(id: 1, name: 'Prayer')),
    ChapterType(id: 1, name: 'Isha', book: BookType(id: 1, name: 'Prayer')),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapters"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 80),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(item: items[index]);
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AddDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
