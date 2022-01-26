import 'package:flutter/cupertino.dart';

class ScreenProvider with ChangeNotifier
{
  int lastIndex = 0;
  int _selectedIndex = 0;
  void changeIndex(int newVal)
  {
    _selectedIndex = newVal;
    notifyListeners();
  }

  get selectedIndex => _selectedIndex;
}