import 'package:flutter/cupertino.dart';

class AppStateProvider extends ChangeNotifier {
  int _bottomNavIndex = 0;

  int get bottomNavIndex => _bottomNavIndex;

  void updateBottomNavIndex(int value) {
    _bottomNavIndex = value;
    notifyListeners();
  }
}
