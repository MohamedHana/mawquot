// Packages
import 'dart:math';
import 'package:flutter/material.dart';

class SearchDialog extends StatefulWidget {
  const SearchDialog({Key? key}) : super(key: key);

  @override
  State<SearchDialog> createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  bool _haveResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find a chapter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              autocorrect: false,
              autofocus: true,
              initialValue: '',
              decoration: const InputDecoration(
                labelText: 'Search',
                hintText: 'Chapters and books...',
                helperText: '4 results',
              ),
              onChanged: (value) {
                setState(() {
                  _haveResults = value.isEmpty ? false : true;
                });
              },
            ),
            const SizedBox(height: 10.0),
            const Divider(),
            const SizedBox(height: 10.0),
            if (_haveResults) ...[
              Expanded(
                child: ListView(
                  children: const [
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                    SearchResultCard(),
                  ],
                ),
              ),
            ] else ...[
              const Center(
                child: Text(
                  "Start typing to see results...",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}


















class SearchResultCard extends StatefulWidget {
  const SearchResultCard({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchResultCard> createState() => _SearchResultCardState();
}

class _SearchResultCardState extends State<SearchResultCard> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ListTile(
          title: const Text('Chapter 1'),
          subtitle: const Text('Prayer'),
          trailing: random.nextInt(12) == 8 ? Icon(Icons.outlined_flag_rounded, color: Theme.of(context).colorScheme.primary) : null,
          onTap: () {

          },
        )
      ),
    );
  }
}
