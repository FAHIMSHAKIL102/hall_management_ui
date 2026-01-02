import 'package:flutter/material.dart';

class PasswordVisibilityProvider  extends ChangeNotifier{
  bool _toggle= false;
  bool get toggle=>_toggle;
  void setToggle(){
    _toggle= !_toggle;
    notifyListeners();
  }
}