import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';
import 'package:hall_management_ui/pages/varification_screen.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:hall_management_ui/provider/radio_button_provider.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 177.h),
              height: 54.h,
              child: myText45("Create an account"),
            ),
            SizedBox(height: 58.h),
            Mytextformfield(
              myController: emailController,
              myHintText: 'Email',
              myObscureText: false,
              myPrefixIcon: Icon(Icons.email),
            ),
            Consumer<PasswordVisibilityProvider>(
              builder: (BuildContext context, value, child) {
                return Mytextformfield(
                  myController: passwordController,
                  myHintText: 'Password',
                  myObscureText: value.toggle,
                  myPrefixIcon: Icon(Icons.lock),
                  mySuffixIcon: IconButton(
                    onPressed: () {
                      value.setToggle();
                    },
                    icon: Icon(
                      value.toggle ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25.h,
              child: Row(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<RadioButtonProvider>().buttonChange();
                    },
                    child: Icon(
                      context.watch<RadioButtonProvider>().isOnClickChange
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off_outlined,
                      color: Color(0xff2BAE66),
                    ),
                  ),
                  SizedBox(width: 13.w),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Urbanist'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 23.h),
            Mybutton(
              title: 'Sign up',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VarificationScreen()),
              ),
            ),
            SizedBox(height: 222.h),
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
