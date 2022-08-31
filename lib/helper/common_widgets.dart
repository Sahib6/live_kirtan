import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'constants.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key key, @required this.list}) : super(key: key);

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

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({Key key, this.leading, this.child}) : super(key: key);
  final Widget leading;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = getWidth(context);
    final double _screenHeight = getHeight(context);
    return AppBar(
        automaticallyImplyLeading: false,
        leading: leading,
        backgroundColor: Color(0xffd09c3f),
        flexibleSpace: Container(
            margin: EdgeInsets.only(top: _screenHeight * 0.076),
            width: _screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/appbar_bkg.png"),
                    fit: BoxFit.fill)),
            child: child));
  }
}
