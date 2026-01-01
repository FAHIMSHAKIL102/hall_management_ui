import 'package:flutter/material.dart';

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
                        fontSize: 40,
                        fontFamily: 'Urbanist-SemiBold',
                        color: Color(0xff2BAE66),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 48,
            width: 313,
            child: Text(
              'DIU hall app to manage everything you need',
              style: TextStyle(fontSize: 18, fontFamily: 'Urbanist-SemiBold'),
            ),
          ),
          SizedBox(height: 99),
          Container(
            margin: EdgeInsets.only(left: 25),
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
          SizedBox(height: 44),
        ],
      ),
    );
  }
}
