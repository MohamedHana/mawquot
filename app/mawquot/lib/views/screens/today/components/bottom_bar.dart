// Packages
import 'package:flutter/material.dart';

// Dialogs
import 'package:mawquot/views/screens/today/dialogs/add_chapter.dart';
import 'package:mawquot/views/screens/today/dialogs/search.dart';
import 'package:mawquot/views/screens/today/dialogs/sort.dart';
import 'package:mawquot/views/screens/today/dialogs/timeline.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                  builder: (BuildContext context) => const SortDialog(),
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
                  builder: (BuildContext context) => const TimelineDialog(),
                  fullscreenDialog: true,
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}