import 'package:flutter/material.dart';

class BottomNavigatorProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  PageController pageController = PageController();
  void onTapped(int index) {
    _selectedIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }
}
