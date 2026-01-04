import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/custom_widgets/mytextstyle.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

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
          myText45("You're all set"),
          SizedBox(height: 65),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: InkWell(child: Mybutton(title: "Homepage")),
          ),
        ],
      ),
    );
  }
}
