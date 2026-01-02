import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

TextStyle myTextStyle45() {
  return TextStyle(
    fontSize: 45,
    fontFamily: 'Urbanist-Bold',
    color: Color(0xff2BAE66),
    fontWeight: FontWeight.bold
  );
}

Text myText45(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 45,
      fontFamily: 'Urbanist-Bold',
      color: Color(0xff2BAE66),
    ),
  );
}
