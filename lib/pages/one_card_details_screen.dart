import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';
import 'package:hall_management_ui/provider/bottom_navigator_provider.dart';
import 'package:provider/provider.dart';

class OneCardDetailsScreen extends StatelessWidget {
  const OneCardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Card',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 25.h),
          Padding(
            padding:  EdgeInsets.all(10.r),
            child: SizedBox(
              height: 259.h,
              width: 407.w,
              child: Image(image: AssetImage('assets/images/Card.png')),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 54.h,
            width: 381.w,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: 23.w, top: 18.h),
              child: Text(
                'Muhtasim Kabir',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 31.h),
          Container(
            height: 54.h,
            width: 381.w,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: 23.w, top: 18.h),
              child: Text(
                '1 6 1 3 5 1 6 1',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 283.h),
          InkWell(
            onTap: () {
              context.read<BottomNavigatorProvider>().changeIndex(3);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen(),
                ),
              );
            },
            child: Mybutton(title: 'Continue'),
          ),
        ],
      ),
    );
  }
}
