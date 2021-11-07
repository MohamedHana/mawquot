// Packages
import 'package:flutter/material.dart';


class SupportTypes extends StatefulWidget {
  const SupportTypes({Key? key}) : super(key: key);

  @override
  State<SupportTypes> createState() => _SupportTypesState();
}

class _SupportTypesState extends State<SupportTypes> {
  String dropdownValue = 'Support type 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 1,
        color: Colors.grey,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Support type 1',
        'Support type 2',
        'Support type 3',
        'Support type 4',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
