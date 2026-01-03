import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  height: 515,
                  width: 457,
                  child: Image(image: AssetImage('assets/images/Vector.png')),
                ),
                Positioned(
                  top: 407,
                  left: 28, //right: 57,bottom: 290,
                  child: Container(
                    height: 235,
                    width: 345,
                    child: Text(
                      'Lets have \nthe best \naccommodation with us',
                      style: TextStyle(
                        fontSize: 42,
                        fontFamily: 'Urbanist-Bold',
                        color: Color(0xff2BAE66),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 25, top: 44),
            height: 48,
            width: 313,
            child: Text(
              'DIU hall app to manage everything you need',
              style: TextStyle(fontSize: 18, fontFamily: 'Urbanist-SemiBold'),
            ),
          ),
          SizedBox(height: 99),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SigninScreen()),
              ),
              child: Container(
                height: 55,
                width: 381,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff2BAE66), width: 3),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2BAE66),
                      fontFamily: 'Urbanist-Bold',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
