import 'package:flutter/material.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<PasswordChangedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Password updated'),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Icon(
                    Icons.done,
                    color: Colors.green,
                    size: 60.0,
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text('Password updated !',
                          style: TextStyle(fontSize: 22))),
                  Wrap(
                    children: const <Widget>[
                      Text(
                        'Your password has been changed successfully',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
