// Packages
import 'package:flutter/material.dart';

// Models
import 'package:mawquot/models/chapter.dart';

// Dialogs
import 'package:mawquot/views/screens/today/dialogs/open_chapter.dart';

class Presenter extends StatefulWidget {
  const Presenter({
    Key? key,
  }):super(key: key);

  @override
  _PresenterState createState() => _PresenterState();
}

class _PresenterState extends State<Presenter> {
  int? _chapterInPresent;
  int? _chapterInFuture;

  @override
  void initState() {
    _chapterInPresent = 2;
    _chapterInFuture = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List.generate(Chapter.chapters.length, (index) {
          final chapter = Chapter.chapters[index];
          
          // Chapter not yet started (chapter state: initial)
          Icon leadingIcon = const Icon(
            Icons.circle,
            color: Colors.grey,
          );
          
          // Chapter has started (chapter state: started)
          if(chapter.spent != '00:00'){
            leadingIcon = const Icon(
              Icons.circle,
              color: Colors.yellow,
            );
          }

          // Chapter in present 
          if(index == _chapterInPresent){
            leadingIcon = const Icon(
              Icons.flag,
              color: Colors.green,
            );
          }

          // Chapter in future
          if(index == _chapterInFuture){
            leadingIcon = const Icon(
              Icons.flag,
              color: Colors.lightBlue,
            );
          }

          return Card(
            elevation: 4,
            child: ListTile(
              minLeadingWidth: 5,
              title: Text(chapter.name),
              subtitle: Text(chapter.duration),
              leading: leadingIcon,
              trailing: chapter.spent.isNotEmpty ? Text(chapter.spent) : null,
              // Open chapter dialog
              onTap: () {
                showDialog<void>(context: context, builder: (context) => OpenChapterDialog(index: index, chapter: chapter, leadingIcon: leadingIcon));
              },
              // Put chapter in present occur
              onLongPress: () {
                putChapterIntoPresent(index);
              }
            ),
          );
        }),
      ),
    );
  }

  void putChapterIntoPresent(int index) {
    setState(() {
      _chapterInPresent = index;
    });
  }
}

