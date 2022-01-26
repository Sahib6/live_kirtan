import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/constants.dart';
import 'package:live_kirtan/helper/navigation_drawer.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = getWidth(context);
    final double _screenHeight = getHeight(context);
    var provider = Provider.of<ScreenProvider>(context);
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _key,
        appBar: AppBar(
          leading: InkWell(
            child: SizedBox(
                width: _screenHeight * 0.046, height: _screenHeight * 0.046),
            onTap: () => _key.currentState.openDrawer(),
          ),
          backgroundColor: Color(0xffd09c3f),
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: _screenHeight * 0.076),
            width: _screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/appbar_bkg.png"),
                    fit: BoxFit.fill)),
            child: (provider.selectedIndex == 0 ||
                    ((provider.selectedIndex == 2 || provider.selectedIndex == 5) && provider.lastIndex == 0))
                ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    InkWell(
                        child: Image.asset(
                      "images/share.png",
                      width: _screenWidth * 0.099,
                    )),
                    InkWell(child: Image.asset("images/timer.png")),
                    InkWell(child: Image.asset("images/alarm.png")),
                  ])
                : Center(
                    child: Text(
                      (provider.selectedIndex != 2 && provider.selectedIndex != 5)
                          ? navDrawerItems[provider.selectedIndex]
                          : navDrawerItems[provider.lastIndex],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
          ),
        ),
        backgroundColor: Color(0xffD09C3F),
        body: screens[provider.selectedIndex],
        drawer: NavigationDrawer());
  }
}
