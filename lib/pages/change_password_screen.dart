import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:provider/provider.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change your password',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(
              height: 188,
              width: 188,
              child: Image.asset('assets/images/IconBiglock.png'),
            ),
            SizedBox(height: 29),
            SizedBox(
              height: 40,
              width: 337,
              child: Text(
                'Please enter your current password and chose a new password that stands out',
              ),
            ),
            SizedBox(height: 48),
            Consumer<PasswordVisibilityProvider>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Mytextformfield(
                      myHintText: 'Current Password',
                      myObscureText: value.toggle,
                      myPrefixIcon: Icon(Icons.lock),
                      mySuffixIcon: IconButton(
                        onPressed: () {
                          value.setToggle();
                        },
                        icon: Icon(
                          value.toggle
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    Mytextformfield(
                      myHintText: 'New Password',
                      myObscureText: value.toggle,
                      myPrefixIcon: Icon(Icons.lock),
                      mySuffixIcon: IconButton(
                        onPressed: () {
                          value.setToggle();
                        },
                        icon: Icon(
                          value.toggle
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    Mytextformfield(
                      myHintText: 'Confirm Password',
                      myObscureText: value.toggle,
                      myPrefixIcon: Icon(Icons.lock),
                      mySuffixIcon: IconButton(
                        onPressed: () {
                          value.setToggle();
                        },
                        icon: Icon(
                          value.toggle
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 44),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      actions: [
                        SizedBox(
                          height: 450,
                          width: 375,
                          child: Column(
                            children: [
                              SizedBox(height: 56),
                              Center(
                                child: SizedBox(
                                  height: 246,
                                  width: 215,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/Group.png',
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavigationScreen(),
                                  ),
                                ),
                                child: SizedBox(
                                  width: 375,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/PasswordResetSuccessful.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 67),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Mybutton(title: 'Update'),
            ),
          ],
        ),
      ),
    );
  }
}
