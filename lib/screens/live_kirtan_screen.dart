import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/constants.dart';
class LiveKirtanScreen extends StatelessWidget {
  const LiveKirtanScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = getWidth(context);
    final double _screenHeight = getHeight(context);
    return SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: _screenHeight * 0.73,
                margin: EdgeInsets.zero,
                width: _screenWidth * 0.9999,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/kirtan_background.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: _screenWidth * 0.017, top: _screenHeight * 0.014),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          child: SizedBox(
                            width: _screenWidth * 0.25,
                            height: _screenHeight * 0.04,
                          )),
                      InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: SizedBox(
                              width: _screenWidth * 0.25,
                              height: _screenHeight * 0.04,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Stack(children: [
              Container(
                margin: EdgeInsets.only(top: _screenHeight * 0.015),
                width: _screenWidth * 0.9,
                height: _screenHeight * 0.011,
                decoration: BoxDecoration(
                    color: Color(0xffC0954F),
                    border: Border.all(
                        color: Color(0xff645741), style: BorderStyle.solid),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ),
              Container(
                width: _screenWidth * 0.034,
                height: _screenHeight * 0.032,
                margin: EdgeInsets.only(top: _screenHeight * .005),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffB3B3B3), Color(0xffEAEAEA)]),
                    border: Border.all(color: Color(0xff776D5A)),
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
              )
            ]),
            Text(
              "Live streaming of kirtan directly from the Sri Harmandir Sahib, Amritsar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.0),
            ),
            Row(
              children: [
                Container(
                  width: _screenWidth * 0.2,
                  height: _screenHeight * 0.04,
                  margin: EdgeInsets.only(left: 5.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffEB5156), Color(0xffD31516)]),
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  child: Center(
                    child: Text(
                      "Radio",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 18.0),
                  child: Icon(
                    Icons.fast_rewind,
                    color: Color(0xffA95E22),
                    size: _screenWidth * 0.11,
                  ),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Color(0xffA95E22),
                  size: _screenWidth * 0.11,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Icon(
                    Icons.stop,
                    color: Color(0xff502300),
                    size: _screenWidth * 0.11,
                  ),
                ),
                Image.asset(
                  "images/record_btn.png",
                  width: _screenWidth * 0.11,
                  height: _screenWidth * 0.11,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Icon(Icons.fast_forward,
                        color: Color(0xffA95E22), size: _screenWidth * 0.11),
                  ),
                )
              ],
            ),
            Text("Thanks to Almighty for all the support",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0))
          ],
        ));
  }
}
