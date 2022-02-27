// Packages
import 'dart:math';
import 'package:flutter/material.dart';

class AddChapterDialog extends StatefulWidget {
  const AddChapterDialog({Key? key}) : super(key: key);

  @override
  State<AddChapterDialog> createState() => _AddChapterDialogState();
}

class _AddChapterDialogState extends State<AddChapterDialog> {
  bool _haveResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add chapter'),
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
                helperText: '4 results found',
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
  bool _submitted = false;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Row(
            children: [
              if( _submitted )
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
              ),
              const Text('Chapter 1'),
            ],
          ),
          subtitle: const Text('Prayer'),
          trailing: const Text('02:25 h'),
          children: <Widget>[
            (() {
              if( ! _submitted ){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _submitted = !_submitted;
                        });
                      },
                      child: const Text("Start now"),
                    ),
                    const Text("or"),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _submitted = !_submitted;
                        });
                      },
                      child: const Text("To do later"),
                    )
                  ],
                );
              }
              else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      random.nextInt(100) % 2 == 0 ?  'Just started..' : 'Added for later..', // Added for later (second state)
                      // style: TextStyle(color: Theme.of(context).colorScheme.primary),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _submitted = !_submitted;
                        });
                      },
                      child: const Text("Cancel"),
                      style: TextButton.styleFrom(
                        primary: Theme.of(context).errorColor,
                      ),
                    )
                  ],
                );
              }
            }()),
          ],
        )
      ),
    );
  }
}
