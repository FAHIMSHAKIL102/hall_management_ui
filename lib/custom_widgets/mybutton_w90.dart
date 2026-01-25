import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MybuttonW90 extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  final VoidCallback? onTap;
  bool get isSelected => currentIndex == index;
  const MybuttonW90({
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
        height: 55.h,
        width: 90.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff2BAE66), width: 2),
          color: isSelected ? Color(0xff2BAE66) : Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
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
