import 'package:flutter/material.dart';

class MybuttonW124 extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  final VoidCallback? onTap;
  bool get isSelected => currentIndex == index;
  const MybuttonW124({
    super.key,
    required this.title,
    required this.index,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 38,
        width: 124,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff2BAE66), width: 2),
          color: isSelected ? Color(0xff2BAE66) : Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Urbanist',
              color: isSelected ? Color(0xffFFFFFF) : Color(0xff2BAE66),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
