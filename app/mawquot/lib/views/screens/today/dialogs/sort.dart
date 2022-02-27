// Packages
import 'dart:ui';
import 'package:flutter/material.dart';












// View Models
class Chapter {
  // Attributes
  int id;
  int order;
  String name;
  String duration;

  // Methods
  Chapter({
    this.id = 0, 
    this.order = 0,
    this.name = 'Chapter',
    this.duration = '1:00 minutes',
  });
}

















class SortDialog extends StatelessWidget {
  const SortDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sort your day'),
      ),
      body: const ChaptersList(),
    );
  }
}

class ChaptersList extends StatefulWidget {
  const ChaptersList({Key? key}) : super(key: key);

  @override
  State<ChaptersList> createState() => _ChaptersListState();
}

class _ChaptersListState extends State<ChaptersList> {
  final List<Chapter> _items = List<Chapter>.generate(20, (int index) => Chapter(
      id: index, 
      order: index, 
      name: 'Chapter ' + index.toString(),
      duration: index.toString() + ':00 minutes'
    )
  );

  Widget _proxyDecorator(Widget child, int index, Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final ColorScheme colorScheme = Theme.of(context).colorScheme;
        final double animValue = Curves.easeInOut.transform(animation.value);
        final double elevation = lerpDouble(0, 6, animValue)!;

        return Material(
          elevation: elevation,
          color: colorScheme.primary,
          shadowColor: colorScheme.primaryContainer,
          child: child,
          borderRadius: BorderRadius.circular(5),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      buildDefaultDragHandles: false,
      proxyDecorator: _proxyDecorator,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        for (int index = 0; index < _items.length; index++)
          Card(
            key: Key('$index'),
            // elevation: 5,
            child: ListTile(
              title: Text(_items[index].name),
              subtitle: Text(_items[index].duration),
              leading: (_items[index].id == 4) ? Icon(Icons.outlined_flag_rounded, color: Theme.of(context).colorScheme.primary) : null,
              trailing: ReorderableDragStartListener(
                index: index,
                child: const Icon(Icons.drag_handle),
              ),
            ),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final Chapter item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}