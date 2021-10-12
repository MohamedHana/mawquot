// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Constants

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
      ),
      body: const Center(
        child: Text(
          'Books screen',
        ),
      ),
    );
  }
}

