import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/constants.dart';
import 'package:live_kirtan/helper/gurbani_provider.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:live_kirtan/screens/gurbani_screens/japji_sahib.dart';
import 'package:live_kirtan/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      routes: {gurbanis[0]: (context) => JapjiSahib()},
      home: MultiProvider(
        child: HomePage(),
        providers: [
          ChangeNotifierProvider(create: (context) => ScreenProvider()),
          ChangeNotifierProvider(create: (context) => GurbaniProvider())
        ],
      )));
}
