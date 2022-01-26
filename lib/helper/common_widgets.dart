import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class CustomDialog extends StatelessWidget {
  const CustomDialog({Key key,@required this.list}) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        'Sri Guru Granth Sahib Ji',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      actions: [
        for (var item in list)
          CupertinoDialogAction(
            onPressed: () {
              if (item == list.last) Navigator.pop(context);
            },
            child: Text(
              item,
              style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          )
      ],
    );
  }
}