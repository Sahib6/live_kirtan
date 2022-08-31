import 'package:flutter/cupertino.dart';

import 'constants.dart';

class ScreenProvider with ChangeNotifier {
  int lastIndex = 0;
  int _selectedIndex = 0;

  void changeIndex(int newVal) {
    _selectedIndex = newVal;
    notifyListeners();
  }

  void changeIndicesOfListItems(int oldIndex, int newIndex) {
    final String item = navDrawerItems.removeAt(oldIndex);
    final screen = screens.removeAt(oldIndex);
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    navDrawerItems.insert(newIndex, item);
    screens.insert(newIndex, screen);
    _selectedIndex = newIndex;
    notifyListeners();
  }

  get selectedIndex => _selectedIndex;
}
