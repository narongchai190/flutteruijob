import 'package:flutter/material.dart';

class TapProvider extends ChangeNotifier {
  int _isTap = 0;

  get isTap => _isTap;

  set isTap(int tap) {
    _isTap = tap;
    notifyListeners();
  }
}
