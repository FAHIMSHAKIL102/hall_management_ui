import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';
import 'package:hall_management_ui/pages/forgot_pass_screen.dart';
import 'package:hall_management_ui/pages/signup_screen.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:provider/provider.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  ValueNotifier<bool> isRememberButtonClick = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 104.h),
              height: 60.h,
              child: myText45("Let's you in"),
            ),
            SizedBox(height: 125.h),
            Mytextformfield(
              myController: emailController,
              myHintText: 'Email',
              myObscureText: false,
              myPrefixIcon: Icon(Icons.email),
              myTextInputType: TextInputType.emailAddress,
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
                  ValueListenableBuilder(
                    valueListenable: isRememberButtonClick,
                    builder: (BuildContext context, value, Widget? child) {
                      return GestureDetector(
                        onTap: () {
                          isRememberButtonClick.value =
                              !isRememberButtonClick.value;
                        },
                        child: Icon(
                          isRememberButtonClick.value
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off_outlined,
                          color: Color(0xff2BAE66),
                        ),
                      );
                    },
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
              title: 'Sign in',
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen(),
                ),
              ),
            ),
            SizedBox(height: 42.h),
            SizedBox(
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassScreen()),
                ),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Urbanist',
                    color: Color(0xff2BAE66),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 166.h),
            Container(
              margin: EdgeInsets.only(bottom: 45.h),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text('Sign Up', style: myTextStyle14()),
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
