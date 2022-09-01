import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/common_widgets.dart';
import 'package:live_kirtan/helper/constants.dart';

class JapjiSahib extends StatelessWidget {
  const JapjiSahib({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getHeight(context) * 0.065),
        child: CommonAppBar(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: getWidth(context) * 0.015,
                vertical: getHeight(context) * 0.007),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/back_button.png'),
                            fit: BoxFit.cover)),
                    height: getHeight(context) * 0.036,
                    width: getWidth(context) * 0.205,
                    alignment: Alignment.center,
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFD41C1C)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
