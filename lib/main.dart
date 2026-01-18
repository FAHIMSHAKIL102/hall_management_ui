import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/splash_screen.dart';
import 'package:hall_management_ui/provider/bottom_navigator_provider.dart';
import 'package:hall_management_ui/provider/button_color_provider.dart';
import 'package:hall_management_ui/provider/button_three_color_provider.dart';
import 'package:hall_management_ui/provider/button_two_color_provider.dart';
import 'package:hall_management_ui/provider/facility_provider.dart';
import 'package:hall_management_ui/provider/password_visibility_provider.dart';
import 'package:hall_management_ui/provider/radio_button_provider.dart';
import 'package:hall_management_ui/provider/range_slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordVisibilityProvider()),
        ChangeNotifierProvider(create: (context) => ButtonColorProvider()),
        ChangeNotifierProvider(create: (context) => RangeSliderProvider()),
        ChangeNotifierProvider(create: (context) => FacilityProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavigatorProvider()),
        ChangeNotifierProvider(create: (context) => RadioButtonProvider()),
        ChangeNotifierProvider(create: (context) => ButtonTwoColorProvider()),
        ChangeNotifierProvider(create: (context) => ButtonThreeColorProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Urbanist'),
        home: SplashScreen(),
      ),
    );
  }
}
