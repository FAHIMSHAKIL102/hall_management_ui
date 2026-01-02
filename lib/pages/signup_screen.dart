import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 203),
              child: myText45("Create an account"),
            ),
            SizedBox(height: 50),
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
            Row(
              mainAxisAlignment: .center,
              children: [
                Radio(value: Color(0xff2BAE66), toggleable: true),
                Text(
                  'Remember me',
                  style: TextStyle(fontSize: 12, fontFamily: 'Urbanist'),
                ),
              ],
            ),
            Mybutton(title: 'Sign in'),
            SizedBox(height: 42),
            Text(
              'Forgot password',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Urbanist-Bold',
                color: Color(0xff2BAE66),
              ),
            ),
            SizedBox(height: 177),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: 'Urbanist-Regular',
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Urbanist-Bold',
                    fontSize: 14,
                    color: Color(0xff2BAE66),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
