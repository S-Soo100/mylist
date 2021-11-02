import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _index = 0;
  int get currentpage => _index;

  void updateCurrentPage(int index) {
    _index = index;
    notifyListeners();
  }
}
