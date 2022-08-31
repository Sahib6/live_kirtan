import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = getWidth(context);
    final double _screenHeight = getHeight(context);

    var provider = Provider.of<ScreenProvider>(context);
    return Container(
      width: _screenWidth * 0.85,
      color: Color(0xffF0D986),
      child: ReorderableListView(
        header: Row(
          key: ValueKey('row1'),
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
        physics: ClampingScrollPhysics(),
        onReorder: (oldIndex, newIndex) {
          provider.changeIndicesOfListItems(oldIndex, newIndex);
        },
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        children: [
          for (int i = 0; i < navDrawerItems.length; i++)
            Container(
              key: UniqueKey(),
              color: (i == provider.selectedIndex)
                  ? Color(0xffd9aa50)
                  : Color(0xffF0D986),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 5.0, top: 5.0, bottom: 5.0),
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
                              (i == provider.selectedIndex)
                                  ? 'images/three_lines1.png'
                                  : 'images/three_line.png',
                              width: 30,
                              height: 30,
                            )
                          ],
                        ),
                        onTap: () {
                          provider.lastIndex = provider.selectedIndex;
                          provider.changeIndex(i);
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
