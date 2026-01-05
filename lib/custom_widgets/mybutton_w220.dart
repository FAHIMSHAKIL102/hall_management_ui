import 'package:flutter/material.dart';

class MybuttonW220 extends StatelessWidget {
  final String title;
  const MybuttonW220({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 220,
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
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
