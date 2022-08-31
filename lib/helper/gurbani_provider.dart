import 'package:flutter/material.dart';

class GurbaniProvider with ChangeNotifier {
  int selectedGurbaniIndex = 0;
  set selectedGurbaniIndexChange(index) {
    selectedGurbaniIndex = index;
    notifyListeners();
  }
}
