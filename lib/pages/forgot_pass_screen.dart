import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/forgot_pass_varification_screen.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({super.key});
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 156.h),
              height: 60.h,
              child: myText45('Forgot Password?'),
            ),
            SizedBox(height: 80.h),
            SizedBox(
              height: 17.h,
              child: Text('Please enter your email address'),
            ),
            SizedBox(height: 24.h),
            Mytextformfield(
              myController: emailController,
              myHintText: 'Email',
              myObscureText: false,
              myPrefixIcon: Icon(Icons.email),
            ),
            SizedBox(height: 18.h),
            Mybutton(
              title: 'Continue',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPassVarificationScreen(),
                ),
              ),
            ),
            SizedBox(height: 288.h),
            Container(
              margin: EdgeInsets.only(bottom: 45.h),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Remember your password?",
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
