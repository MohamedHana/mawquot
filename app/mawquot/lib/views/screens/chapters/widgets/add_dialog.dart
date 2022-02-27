// Packages
import 'package:flutter/material.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({Key? key}) : super(key: key);

  @override
  _AddDialogState createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New chapter'),
      content: TextFormField(
        autofocus: true,
        maxLength: 25,
        decoration: const InputDecoration(
          isDense: true,
          border: OutlineInputBorder(),
        ),
      ),
      
      actions: [
        TextButton(
          onPressed: () {

          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {

          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}