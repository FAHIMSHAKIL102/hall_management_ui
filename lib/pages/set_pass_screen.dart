import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/pass_reset_confirm_screen.dart';
import 'package:hall_management_ui/pages/varification_screen.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:provider/provider.dart';

class SetPassScreen extends StatelessWidget {
  const SetPassScreen({super.key});

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
              child: myText45("Set password"),
            ),
            SizedBox(height: 58),
            Consumer<PasswordVisibilityProvider>(
              builder: (context, value, child) {
                return Column(
                  children: [
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
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PassResetConfirmScreen(),
                ),
              ),
              child: Mybutton(title: 'Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
