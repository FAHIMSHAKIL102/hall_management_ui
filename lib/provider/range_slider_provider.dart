import 'package:flutter/material.dart';

class RangeSliderProvider extends ChangeNotifier {
  RangeValues _currentValue = RangeValues(0, 10000);
  RangeValues get currentValue => _currentValue;
  void updateValue(RangeValues newValue) {
    _currentValue = newValue;
    notifyListeners();
  }
}
