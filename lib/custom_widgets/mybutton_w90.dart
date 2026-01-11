import 'package:flutter/material.dart';

class MybuttonW90 extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  bool get isSelected=>currentIndex==index;
  const MybuttonW90({super.key, required this.title,required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff2BAE66), width: 2),
        color: isSelected? Color(0xff2BAE66):Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Urbanist',
            color: isSelected? Color(0xffFFFFFF): Color(0xff2BAE66),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
