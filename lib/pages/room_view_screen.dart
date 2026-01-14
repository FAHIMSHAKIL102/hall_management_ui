import 'package:flutter/material.dart';

class RoomViewScreen extends StatelessWidget {
  const RoomViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: .start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image(image: AssetImage('assets/images/Roomphoto.png')),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22,top: 22),
            child: Text(
              'Room W-507',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
