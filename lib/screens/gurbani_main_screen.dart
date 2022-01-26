import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GurbaniMainScreen extends StatelessWidget {
  const GurbaniMainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Flexible(flex: 60, child: FirstHalf()),
        Flexible(flex: 40, child: SecondHalf())
      ],
    ));
  }
}

class FirstHalf extends StatelessWidget {
  const FirstHalf({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/gurbani_screen_upper.png'),
            fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Spacer(),
          Container(
            height: 30,
            margin: EdgeInsets.symmetric(horizontal: 11.29, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Read Bani',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFD41C1C)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Select & Play',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFD41C1C)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SecondHalf extends StatelessWidget {
  List<String> gurbanis = [
    'Japji Sahib',
    'Jaap Sahib',
    'Tav Prasad Savayiye',
    'Chaupayi Sahib',
    'Anand Sahib',
    'Asa Di Vaar',
    'Sukhmani Sahib',
    'Rehras Sahib',
    'Sohaila',
    'Ardaas'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CupertinoPicker(
        itemExtent: 35.0,
        children: [
          for (var items in gurbanis)
            Center(
                child: Text(
              items,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ))
        ],
      ),
    );
  }
}
