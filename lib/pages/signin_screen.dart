import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/forgot_pass_screen.dart';
import 'package:hall_management_ui/pages/home_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 104),
            height: 60,
            child: myText45("Let's you in"),
          ),
          SizedBox(height: 125),
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
            height: 14,
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Radio(value: Color(0xff2BAE66), toggleable: true),
                Text(
                  'Remember me',
                  style: TextStyle(fontSize: 12, fontFamily: 'Urbanist'),
                ),
              ],
            ),
          ),
          SizedBox(height: 23),
          InkWell(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
            child: Mybutton(title: 'Sign in'),
          ),
          SizedBox(height: 42),
          SizedBox(
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassScreen()),
              ),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Urbanist',
                  color: Color(0xff2BAE66),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 177),
          Container(
            margin: EdgeInsets.only(bottom: 45),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: 'Urbanist-Regular',
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 2),
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
    );
  }
}
