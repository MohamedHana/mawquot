// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Widgets
import 'package:mawquot/views/screens/chapters/widgets/action_buttons.dart';

// Models
import 'package:mawquot/models/chapter_type.dart';

class ListItem extends StatelessWidget {
  final ChapterType item;

  const ListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            item.name,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          ActionButtons(item: item),
        ],
      ),
      padding: const EdgeInsets.only(left: 5.0),
    );
  }
}
