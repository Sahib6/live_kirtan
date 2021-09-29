import 'dart:core';


import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'nav_drawer_items.dart';

double getHeight(BuildContext context)
{
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context)
{
  return MediaQuery.of(context).size.width;
}




class MyProviders with ChangeNotifier
{
  bool _isSelected = false;

  bool getIsSelected(String t1, String t2)
  {
    if(t1 == t2)
      return _isSelected = true;

    else
      return _isSelected = false;
  }

  toggleDrawerItems(String title)
  {
    navDrawerItems.forEach((element)
        {
          if(element.title == title)
            _isSelected = true;
          else
            _isSelected = false;

          print("${element.title} : ${element.isSelected}");
          notifyListeners();
        });
  }


}
