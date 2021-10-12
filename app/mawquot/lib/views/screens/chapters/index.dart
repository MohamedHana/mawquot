// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Constants

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
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
      body: const Center(
        child: Text(
          'Chapters screen',
        ),
      ),
    );
  }
}

