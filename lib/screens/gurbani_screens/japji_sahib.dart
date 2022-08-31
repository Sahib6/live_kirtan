import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/common_widgets.dart';

class JapjiSahib extends StatelessWidget {
  const JapjiSahib({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CommonAppBar(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      CustomPaint(
                        painter: Triangle(),
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        alignment: Alignment.center,
                        child: Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xFFD41C1C),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red[700];
    paint.strokeWidth = 8;
    paint.style = PaintingStyle.fill;
    canvas.drawLine(Offset(-10, 0), Offset(1, 11), paint);
    canvas.drawLine(Offset(-10, 0), Offset(0, 5), paint);
    canvas.drawLine(Offset(-10, 0), Offset(0, 0), paint);
    canvas.drawLine(Offset(-10, 0), Offset(0, -5), paint);
    canvas.drawLine(Offset(-10, 0), Offset(1, -11), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
