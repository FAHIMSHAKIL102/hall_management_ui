import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(
            height: 656.h,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  height: 532.h,
                  width: double.infinity,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/Vector.png'),
                  ),
                ),
                Positioned(
                  top: 407.h,
                  left: 28.w, //right: 57,bottom: 290,
                  child: SizedBox(
                    height: 235.h,
                    width: 345.w,
                    child: Text(
                      'Lets have \nthe best \naccommodation with us',
                      style: TextStyle(
                        fontSize: 42.sp,
                        fontFamily: 'Urbanist-Bold',
                        color: Color(0xff2BAE66),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 25.w, top: 44.h),
            height: 48.h,
            width: 313.w,
            child: Text(
              'DIU hall app to manage everything you need',
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Urbanist-SemiBold',
              ),
            ),
          ),
          SizedBox(height: 99.h),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SigninScreen()),
              ),
              child: Container(
                height: 55.h,
                width: 381.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff2BAE66), width: 3),
                  borderRadius: BorderRadius.circular(35.r),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff2BAE66),
                      fontFamily: 'Urbanist-Bold',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
