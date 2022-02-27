// Packages
import 'package:flutter/material.dart';

// Widgets
import 'package:mawquot/views/screens/books/widgets/delete_dialog.dart';

// Models
import 'package:mawquot/models/book_type.dart';

class ActionButtons extends StatefulWidget {
  final BookType item;

  const ActionButtons({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  _ActionButtonsState createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.grey[700],
          ),
          splashRadius: 20,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DeleteDialog();
              }
            );
          },
        ),
      ],
    );
  }
}