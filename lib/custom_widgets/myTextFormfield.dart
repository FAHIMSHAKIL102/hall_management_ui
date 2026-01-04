import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  var myController;
  String myHintText;
  Icon? myPrefixIcon;
  IconButton? mySuffixIcon;
  bool myObscureText;
  TextInputType? myTextInputType;
  Mytextformfield({
    super.key,
    this.myController,
    required this.myHintText,
    required this.myObscureText,
    this.myPrefixIcon,
    this.mySuffixIcon,
    this.myTextInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 25, bottom: 25),
      child: TextFormField(
        controller: myController,
        obscureText: myObscureText,
        keyboardType: myTextInputType,
        decoration: InputDecoration(
          prefixIconColor: WidgetStateColor.resolveWith((state) {
            return state.contains(WidgetState.focused)
                ? Color(0xff2BAE66)
                : Color(0xff646464);
          }),
          suffixIconColor: WidgetStateColor.resolveWith((state) {
            return state.contains(WidgetState.focused)
                ? Color(0xff2BAE66)
                : Color(0xff646464);
          }),
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
