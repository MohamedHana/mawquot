// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Constants

class DaysScreen extends StatefulWidget {
  const DaysScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DaysScreenState();
}

class _DaysScreenState extends State<DaysScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Days"),
      ),
      body: const Center(
        child: Text(
          'Days screen',
        ),
      ),
    );
  }
}

