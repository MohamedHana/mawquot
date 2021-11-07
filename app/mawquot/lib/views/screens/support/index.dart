// Packages

import 'package:flutter/material.dart';
import 'dart:math';
// ignore: import_of_legacy_library_into_null_safe
import 'package:hb_check_code/hb_check_code.dart';

//widgets
import 'package:mawquot/views/screens/support/widgets/drop_down.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  SupportScreenState createState() {
    return SupportScreenState();
  }
}

class SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    String code = "";
    for (var i = 0; i < 6; i++) {
      code = code + Random().nextInt(9).toString();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const SupportTypes(),
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: HBCheckCode(
                      code: code,
                    )),
                InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Icon(Icons.refresh)),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  labelText: 'Type the text',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {},
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: <Widget>[
                    TextButton(
                      child: const Text('Click'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/support-requests');
                      },
                    ),
                    const Text('to see all requests'),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
          ],
        ),
      ),
    );
  }
}

