import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  var myController;
  String myHintText;
  Icon? myPrefixIcon;
  Icon? mySuffixIcon;
  bool myObscureText;
  Mytextformfield({
    super.key,
    required this.myController,
    required this.myHintText,
    this.myPrefixIcon,
    this.mySuffixIcon,
    required this.myObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.5),
      child: TextFormField(
        obscureText: myObscureText,
        decoration: InputDecoration(
          hintText: myHintText,
          prefixIcon: myPrefixIcon,
          suffixIcon: mySuffixIcon,
          filled: true,
          fillColor: Color(0xffF2F2F2),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F2F2)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff2BAE66)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
