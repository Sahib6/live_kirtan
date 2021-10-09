import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'nav_drawer_items.dart';

class NavigationDrawer extends StatefulWidget {

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext buildContext) {
    final double _screenWidth = getWidth(buildContext);
    final double _screenHeight = getHeight(buildContext);

    return Container(
      width: _screenWidth*0.85,
      child: Container(
                color: Color(0xffF0D986),
                child: ListView(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(child: Image.asset("images/eng_btn.png"), width: _screenWidth*0.2,height: _screenHeight*0.098,),
                        SizedBox(child: Image.asset("images/pb_btn.png"), width: _screenWidth*0.2,height: _screenHeight*0.098,)
                      ],
                    ),
                    ...getInitialList(context)
                  ],
                ),
              )
    );
  }
}
