import 'package:flutter/material.dart';

class BottomBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentTab => _currentIndex;
  String title = "Anasayfa";

  void setCounter(int currentIndex) {
    _currentIndex = currentIndex;
    notifyListeners();
  }
}
