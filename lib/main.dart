import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:live_kirtan/screens/home_page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => ScreenProvider(),
          child: HomePage())));
}
