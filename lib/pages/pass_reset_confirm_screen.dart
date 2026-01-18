import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';

class PassResetConfirmScreen extends StatelessWidget {
  const PassResetConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 157, left: 23),
            child: Image(image: AssetImage('assets/images/Group.png')),
          ),
          SizedBox(height: 83),
          myText45(" Password Reset"),
          SizedBox(height: 65),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Mybutton(
              title: "Homepage",
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
