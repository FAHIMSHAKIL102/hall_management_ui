import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/profile_info_screen.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 156.h),
              height: 60.h,
              child: myText45('Please verify'),
            ),
            SizedBox(height: 40.h),
            SizedBox(
              height: 17.h,
              child: Text('Please Check your email for the varification code'),
            ),
            SizedBox(height: 48.h),
            Container(
              padding: EdgeInsets.only(bottom: 42.h, left: 47.w, right: 47.w),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  fieldHeight: 74.h,
                  fieldWidth: 74.h,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  activeColor: Color(0xff2BAE66),
                  selectedColor: Color(0xff2BAE66),
                  inactiveColor: Color(0xffF2F2F2),
                  activeFillColor: Color(0xffF8FFFB),
                  inactiveFillColor: Color(0xffF2F2F2),
                ),
              ),
            ),
            Mybutton(
              title: 'Verify',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileInfoScreen()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 79.h),
              height: 14.h,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12.sp, color: Color(0xff000000)),
                  children: <TextSpan>[
                    TextSpan(text: 'Resend code in '),
                    TextSpan(
                      text: '34',
                      style: TextStyle(color: Color(0xff2BAE66)),
                    ),
                    TextSpan(text: ' Second'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 177.h),
            Container(
              margin: EdgeInsets.only(bottom: 45.h),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontSize: 14.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    ),
                    child: Text('Sign in', style: myTextStyle14()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
