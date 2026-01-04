import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/profile_info_screen.dart';
import 'package:hall_management_ui/pages/set_pass_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPassVarificationScreen extends StatelessWidget {
  const ForgotPassVarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 156),
              height: 60,
              child: myText45('Please verify'),
            ),
            SizedBox(height: 40),
            Container(
              height: 17,
              child: Text('Please Check your email for the varification code'),
            ),
            SizedBox(height: 48),
            Container(
              padding: EdgeInsets.only(bottom: 42, left: 47, right: 47),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  fieldHeight: 74,
                  fieldWidth: 74,
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
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SetPassScreen()),
              ),
              child: Mybutton(title: 'Verify'),
            ),
            Container(
              margin: EdgeInsets.only(top: 79),
              height: 14,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Color(0xff000000)),
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
            SizedBox(height: 177),
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
                  Text('Sign in', style: myTextStyle14()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
