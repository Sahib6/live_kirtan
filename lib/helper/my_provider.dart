import 'package:flutter/material.dart';
import 'constants.dart';
class MyProviders with ChangeNotifier {
  bool _isSelected = false;

  bool getIsSelected(String t1, String t2) {
    if (t1 == t2)
      return _isSelected = true;
    else
      return _isSelected = false;
  }

  toggleDrawerItems(String title, BuildContext context) {
    getInitialList(context).forEach((element) {
      if (element.title == title)
        _isSelected = true;
      else
        _isSelected = false;

      print('${element.title} : $_isSelected');
      notifyListeners();
    });
  }
}