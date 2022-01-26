import 'package:flutter/material.dart';

class HukamnamaScreen extends StatelessWidget {
  HukamnamaScreen({Key key}) : super(key: key);

  List<String> buttons = ['FB', 'SMS', 'Mail', 'Twitter', 'WhatsApp'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Flexible(flex: 95, child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/gurbani_screen_upper.png'),
                        fit: BoxFit.fill))
            )),
            Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  color: Color.fromRGBO(0xf0, 0xda, 0x87, 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(var item in buttons)
                        ElevatedButton(onPressed: (){}, child: Text(item, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),), style: ElevatedButton.styleFrom(primary: Colors.red),)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
