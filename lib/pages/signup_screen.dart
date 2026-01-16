import 'package:flutter/material.dart';
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
              margin: EdgeInsets.only(top: 177),
              height: 54,
              child: myText45("Create an account"),
            ),
            SizedBox(height: 58),
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
              height: 14,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  InkWell(
                      onTap: () {
                        context.read<RadioButtonProvider>().buttonChange();
                        print('click');
                      },
                      child: Icon(
                        context.watch<RadioButtonProvider>().isOnClickChange
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off_outlined,
                      ),
                    ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 12, fontFamily: 'Urbanist'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 23),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VarificationScreen()),
              ),
              child: Mybutton(title: 'Sign up'),
            ),
            SizedBox(height: 233),
            Container(
              margin: EdgeInsets.only(bottom: 45),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontSize: 14,
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
