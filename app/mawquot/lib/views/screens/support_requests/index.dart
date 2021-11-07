// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// Constants

// Widgets
import 'package:mawquot/views/screens/support_requests/widgets/list_item.dart';

// Models
import 'package:mawquot/models/support_request.dart';

class SupportRequestsScreen extends StatefulWidget {
  const SupportRequestsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SupportRequestsScreenState();
}

class _SupportRequestsScreenState extends State<SupportRequestsScreen> {
  
  final List<SupportRequest> items = [
    SupportRequest(id: 1, type: 'support type 1', description:'This is support request description.'),
    SupportRequest(id: 2, type: 'support type 2', description:'This is support request description.'),
    SupportRequest(id: 3, type: 'support type 3', description:'This is support request description.'),
    SupportRequest(id: 4, type: 'support type 4', description:'This is support request description.'),
    SupportRequest(id: 5, type: 'support type 5', description:'This is support request description.'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Support requests"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 80),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(item: items[index]);
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),


    );
  }
}
