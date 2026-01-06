import 'package:flutter/material.dart';

class MybuttonW90 extends StatelessWidget {
  final String title;
  const MybuttonW90({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 90,
      decoration: BoxDecoration(
        color:  Color(0xff2BAE66),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Urbanist',
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
