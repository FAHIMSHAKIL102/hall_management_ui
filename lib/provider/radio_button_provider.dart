import 'package:flutter/material.dart';

class RadioButtonProvider extends ChangeNotifier {
  bool _isOnClickChange = false;
  bool get isOnClickChange => _isOnClickChange;

  set value(bool value) {}
  void buttonChange() {
    _isOnClickChange = !_isOnClickChange;
    notifyListeners();
  }
}
