import 'package:flutter/material.dart';

class RangeSliderProvider extends ChangeNotifier {
  double _currentValue = 0.0;
  double get currentValue => _currentValue;

  void updateValue(double newValue) {
    _currentValue = newValue;
    notifyListeners();
  }
}
