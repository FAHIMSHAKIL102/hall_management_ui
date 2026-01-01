import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/info_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InfoScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('assets/images/Welcome.png')),
    );
  }
}
