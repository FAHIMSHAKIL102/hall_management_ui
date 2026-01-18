import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/pages/bottom_navigation_screen.dart';
import 'package:hall_management_ui/provider/bottom_navigator_provider.dart';
import 'package:provider/provider.dart';

class OneCardDetailsScreen extends StatelessWidget {
  const OneCardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Card',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 259,
              width: 407,
              child: Image(image: AssetImage('assets/images/Card.png')),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 54,
            width: 381,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 23, top: 18),
              child: Text(
                'Muhtasim Kabir',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 31),
          Container(
            height: 54,
            width: 381,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 23, top: 18),
              child: Text(
                '1 6 1 3 5 1 6 1',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 283),
          InkWell(
            onTap: () {
              context.read<BottomNavigatorProvider>().changeIndex(3);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen(),
                ),
              );
            },
            child: Mybutton(title: 'Continue'),
          ),
        ],
      ),
    );
  }
}
