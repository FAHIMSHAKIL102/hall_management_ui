import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  const Mybutton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 381,
      decoration: BoxDecoration(
        color: Color(0xff2BAE66),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Urbanist-Medium',
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
