import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';
import 'package:hall_management_ui/pages/change_password_screen.dart';
import 'package:hall_management_ui/pages/edit_profile_screen.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';
import 'package:hall_management_ui/provider/bottom_navigator_provider.dart';
import 'package:provider/provider.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              SizedBox(
                height: 34.h,
                width: 34.w,
                child: Image(image: AssetImage('assets/images/diulogo.png')),
              ),
              SizedBox(width: 20.w),
              SizedBox(
                width: 307.w,
                child: Text(
                  'DIU HALL',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: Image(image: AssetImage('assets/images/3dots.png')),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 42.h, left: 140.w, right: 135.w),
            height: 145.h,
            width: 165.w,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 72.5.r,
                  backgroundImage: AssetImage('assets/images/Kimjun.png'),
                ),
                Positioned(
                  top: 100.h,
                  left: 115.w,
                  bottom: 20.h,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Color(0xff2BAE66),
                    child: Icon(
                      Icons.camera_alt,
                      color: Color(0xffFFFFFF),
                      size: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h, left: 30.w),
            height: 36.h,
            width: 337.w,
            child: Center(
              child: Text(
                'Muhtasim Kabir',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2BAE66),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h.w, left: 30),
            height: 18.h,
            width: 130.w,
            child: Center(
              child: Text(
                'kabir35@diu.edu.bd',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w, vertical: 19.h),
            child: Divider(),
          ),
          Container(
            margin: EdgeInsets.only(top: 11.h, left: 17.w),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 42.w,
                        child: Image(
                          image: AssetImage('assets/images/Profile1.png'),
                        ),
                      ),
                      SizedBox(width: 17.w),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33.h),
                InkWell(
                  onTap: () {
                    context.read<BottomNavigatorProvider>().changeIndex(2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 42.w,
                        child: Image(
                          image: AssetImage('assets/images/IconPayhistory.png'),
                        ),
                      ),
                      SizedBox(width: 17.w),
                      Text(
                        'Payment History',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33.h),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePasswordScreen(),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 42.w,
                        child: Image(
                          image: AssetImage('assets/images/Lock.png'),
                        ),
                      ),
                      SizedBox(width: 17.w),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 91.h),
                Row(
                  children: [
                    SizedBox(
                      height: 42.h,
                      width: 42.w,
                      child: Image(
                        image: AssetImage('assets/images/IconSignout.png'),
                      ),
                    ),
                    SizedBox(width: 17.w),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 355.h,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 33.h),
                                    child: Text(
                                      'Sign out',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFF5C5C),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(top: 31.h),
                                    child: Divider(),
                                  ),
                                  Text(
                                    'Are you sure to Sign out?',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 22.h),
                                  InkWell(
                                    onTap: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SigninScreen(),
                                      ),
                                    ),
                                    child: Container(
                                      height: 55.h,
                                      width: 243.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: Color(0xff2BAE66),
                                          width: 2,
                                        ),
                                        color: Color(0xff2BAE66),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sign Out',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  Container(
                                    height: 55.h,
                                    width: 243.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                        color: Color(0xff2BAE66),
                                        width: 2,
                                      ),
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2BAE66),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFF5C5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
