import 'package:flutter/material.dart';

class VerificationcodePage extends StatefulWidget {
  const VerificationcodePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<VerificationcodePage> {
  TextEditingController verificationCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Verification Code'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text('We sent a code to your email',
                              style: TextStyle(fontSize: 22))),
                      Wrap(
                        children: const <Widget>[
                          Text(
                              'Enter the 6-digit verification code sent to mawqout@gmail.com.'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: verificationCodeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '6 digit code',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/reset-password');
                      },
                    )),
              ],
            )));
  }
}
