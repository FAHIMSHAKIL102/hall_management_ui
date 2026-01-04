import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({super.key});
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 156),
            height: 60,
            child: myText45('Forgot Password?'),
          ),
          SizedBox(height: 80),
          Container(height: 17, child: Text('Please enter your email address')),
          SizedBox(height: 24),
          Mytextformfield(
            myController: emailController,
            myHintText: 'Email',
            myObscureText: false,
            myPrefixIcon: Icon(Icons.email),
          ),
          SizedBox(height: 18),
          Mybutton(title: 'Continue'),
          SizedBox(height: 288),
          Container(
            margin: EdgeInsets.only(bottom: 45),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Remember your password?",
                  style: TextStyle(
                    fontFamily: 'Urbanist-Regular',
                    fontSize: 14,
                  ),
                ),
                Text('Sign in', style: myTextStyle14()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
