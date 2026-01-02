import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  var myController;
  String myHintText;
  Icon? myPrefixIcon;
  IconButton? mySuffixIcon;
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
        controller: myController,
        obscureText: myObscureText,
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
