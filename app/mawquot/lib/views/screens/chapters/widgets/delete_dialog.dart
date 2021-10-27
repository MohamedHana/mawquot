// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DeleteDialog extends StatefulWidget {
  const DeleteDialog({Key? key}) : super(key: key);

  @override
  _DeleteDialogState createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      content: const Text('Delete chapter?'),
      actions: [
        TextButton(
          onPressed: () {

          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {

          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}