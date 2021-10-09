import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/constants.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';


class NavDrawerItem extends StatelessWidget {
  final String title;
  final Function _onTap;
  bool isSelected = false;

  NavDrawerItem(this.title, this._onTap, this.isSelected);

  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Color(0xff000000))),
            onTap: (){
              getInitialList(context).forEach((element) {
                Provider.of<MyProviders>(context, listen: false).getIsSelected(title, element.title);
              });
            },
            selected: isSelected, selectedTileColor: Color(0xffD9AA50), visualDensity: VisualDensity(vertical: -4),
          trailing: Icon(Icons.view_headline_sharp, color: Color(0xffAC8C4B),),),
        Divider(height: 1.0, color: Color(0xffDCB866), thickness: 1,)
      ],
    );
  }
}
