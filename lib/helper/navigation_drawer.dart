import 'package:flutter/material.dart';
import 'constants.dart';

class NavigationDrawer extends StatefulWidget {

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = getWidth(context);
    final double _screenHeight = getHeight(context);

    return Container(
      width: _screenWidth * 0.85,
      padding: EdgeInsets.only(left: 10.0),
      color: Color(0xffF0D986),
      child: ListView(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset("images/eng_btn.png"),
                width: _screenWidth * 0.2,
                height: _screenHeight * 0.098,
              ),
              SizedBox(
                child: Image.asset("images/pb_btn.png"),
                width: _screenWidth * 0.2,
                height: _screenHeight * 0.098,
              )
            ],
          ),
          for (int i = 0; i < navDrawerItems.length; i++)
            Container(
              color: (i == _selectedIndex)
                  ? Color(0xffd9aa50)
                  : Color(0xffF0D986),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            navDrawerItems[i],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          Image.asset(
                            (i == _selectedIndex)
                                ? 'images/three_lines1.png'
                                : 'images/three_line.png',
                            width: 30,
                            height: 30,
                          )
                        ],
                      ),
                      onTap: (){
                        setState(() {
                          _selectedIndex = i;
                        });
                      },
                    ),
                  ),
                  Container(
                    color: Color(0XFFEAD080),
                    height: 2,
                    width: double.infinity,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
