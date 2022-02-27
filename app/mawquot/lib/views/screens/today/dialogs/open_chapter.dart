// Packages
import 'package:flutter/material.dart';
import 'package:mawquot/models/chapter.dart';

class OpenChapterDialog extends StatefulWidget {
  const OpenChapterDialog({Key? key, required this.chapter, required this.index, required this.leadingIcon}) : super(key: key);

  final int index;
  final Chapter chapter;
  final Icon leadingIcon;
  

  @override
  State<OpenChapterDialog> createState() => _OpenChapterDialogState();
}

class _OpenChapterDialogState extends State<OpenChapterDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      // title: Text(widget.chapter.name),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.all(0.0),
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Column(
              children: [
                ListTile(
                  minLeadingWidth: 5,
                  leading: widget.leadingIcon,
                  title: Text(widget.chapter.name),
                  subtitle: Text(
                    widget.chapter.duration,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                     'Time spent [' + widget.chapter.spent+ ']',
                  ),
                ),
                const Divider(),
                Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(left: 10, right: 10),
                      leading: const Icon(Icons.flag, color: Colors.green),
                      title: const Text('Start now'),
                      onTap: () {
                        
                      }
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(left: 10, right: 10),
                      leading: const Icon(Icons.flag, color: Colors.lightBlue),
                      title: const Text('Upcoming'),
                      onTap: () {
                        
                      }
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(left: 10, right: 10),
                      leading: const Icon(Icons.remove, color: Colors.red),
                      title: const Text('Remove from today'),
                      onTap: () {
                        
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
        // SimpleDialogItem(
        //   icon: Icons.account_circle,
        //   color: Colors.orange,
        //   text: 'user01@gmail.com',
        //   onPressed: () {
        //     Navigator.pop(context, 'user01@gmail.com');
        //   },
        // ),
      ],
    );
  }
}








class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({Key? key, required this.icon, required this.color, required this.text, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
