// Packages
import 'package:flutter/material.dart';

class SettingSection extends StatelessWidget {
  final String question;
  final Widget replySection;

  const SettingSection(
      {Key? key, required this.question, required this.replySection}) 
      : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Wrap(
        children: [
          Text(
            question,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          replySection,
        ],
      ),
    );
  }
}