// Packages
import 'package:flutter/material.dart';
import 'package:mawquot/models/support_request.dart';



class ListItem extends StatelessWidget {
  final SupportRequest item;

  const ListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(item.type),
          children: <Widget>[
            ListTile(title: Text(item.description)),
          ],
        ),

      ],
    );
  }
}