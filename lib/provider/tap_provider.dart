import 'package:flutter/material.dart';

class TapProvider extends ChangeNotifier {
  int _isTap = 0;
  int _currentIndex = 0;


  get currentIndex => _currentIndex;
  get isTap => _isTap;


  set isTap(int tap) {
    _isTap = tap;
    notifyListeners();
  }

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
