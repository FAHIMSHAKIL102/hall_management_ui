import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton_w220.dart';
import 'package:hall_management_ui/pages/payment_screen.dart';

class RoomViewScreen extends StatelessWidget {
  const RoomViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('assets/images/Roomphoto.png'),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 50,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 22),
                    child: Text(
                      'Room W-507',
                      style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, top: 19),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff2BAE66),
                        ),
                        Text(
                          'Younus Khan Scholers Garden-Extention 1',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 34,
                      right: 24,
                    ),
                    child: Divider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 24, top: 30),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Gallery Photos',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2BAE66),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19),
                  SizedBox(
                    height: 99,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 24),
                              height: 99,
                              width: 142,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/Roomphoto2.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              height: 99,
                              width: 142,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/Roomphoto3.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              height: 99,
                              width: 142,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/Roomphoto4.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 32),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/SharedImage.png',
                                ),
                              ),
                            ),
                            Text('Shared'),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage('assets/images/Sleeping.png'),
                              ),
                            ),
                            Text('4 Seats'),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/120s fleet.png',
                                ),
                              ),
                            ),
                            Text('120 s.feet'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 32),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 18),
                    width: 360,
                    child: Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy Read more...',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 32),
                    child: Text(
                      'Facilities',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Wifi.png'),
                            ),
                          ),
                          Text(
                            'Internet',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/3TimesFood.png'),
                            ),
                          ),
                          Text(
                            '3 Times Food',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Fitness.png'),
                            ),
                          ),
                          Text(
                            'Fitness Center',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Elevator.png'),
                            ),
                          ),
                          Text(
                            'Elevator',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Prayer.png'),
                            ),
                          ),
                          Text(
                            'Prayer Room',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Sports.png'),
                            ),
                          ),
                          Text(
                            'Sports Facilities',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage('assets/images/Parking.png'),
                            ),
                          ),
                          Text(
                            'Parking Zone',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage(
                                'assets/images/247Monitoring.png',
                              ),
                            ),
                          ),
                          Text(
                            '24/7 Monitoring',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 32),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 18),
                    height: 176,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Location.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 14),
                    child: Row(
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Color(0xffFED200)),
                        SizedBox(width: 6),
                        Text(
                          '4.7',
                          style: TextStyle(
                            color: Color(0xff2BAE66),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('(45 reviews)'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 19),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 22,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/Mamun.png',
                                  ),
                                ),
                                title: Text(
                                  'Abdullah Al Mamun',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text('Dec 10,2022'),
                                trailing: Container(
                                  height: 33,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2BAE66),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFFFFFF),
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 22,
                                  right: 15,
                                  top: 12,
                                  bottom: 19,
                                ),
                                child: Text(
                                  'Very nice and comfortable place to live in. Always clean and 24 hours of electricity supply. Much place for indoor and outdoor games.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 11,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/Mamun.png',
                                  ),
                                ),
                                title: Text(
                                  'Abdullah Al Mamun',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text('Dec 10,2022'),
                                trailing: Container(
                                  height: 33,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2BAE66),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFFFFFF),
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 22,
                                  right: 15,
                                  top: 12,
                                  bottom: 19,
                                ),
                                child: Text(
                                  'Very nice and comfortable place to live in. Always clean and 24 hours of electricity supply. Much place for indoor and outdoor games.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 11,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/Mamun.png',
                                  ),
                                ),
                                title: Text(
                                  'Abdullah Al Mamun',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text('Dec 10,2022'),
                                trailing: Container(
                                  height: 33,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2BAE66),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFFFFFF),
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 22,
                                  right: 15,
                                  top: 12,
                                  bottom: 19,
                                ),
                                child: Text(
                                  'Very nice and comfortable place to live in. Always clean and 24 hours of electricity supply. Much place for indoor and outdoor games.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Container(
                          width: 381,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xff2BAE66).withValues(alpha: .13),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                'More',
                                style: TextStyle(
                                  color: Color(0xff2BAE66),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xff2BAE66),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 124,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, top: 30, right: 14),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        '3000TK.',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff2BAE66),
                        ),
                      ),
                      Text('/month'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 650,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Text(
                                  'Select your seat',
                                  style: TextStyle(
                                    fontSize: 31,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 42),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Container(
                                    width: 173,
                                    height: 167,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Color(0xffD9D9D9),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .center,
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Color(0xffD9D9D9),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Color(0xffD9D9D9),
                                          ),
                                        ),
                                        Text(
                                          'Seat 1',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffD9D9D9),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 173,
                                    height: 167,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Color(0xff2BAE66),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .center,
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Color(0xff2BAE66),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Color(0xff2BAE66),
                                          ),
                                        ),
                                        Text(
                                          'Seat 2',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2BAE66),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Container(
                                    width: 173,
                                    height: 167,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Color(0xffFFB1B1),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .center,
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Color(0xffFFB1B1),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                        Text(
                                          'Seat 3',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 173,
                                    height: 167,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Color(0xffFFB1B1),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .center,
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Color(0xffFFB1B1),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                        Text(
                                          'Seat 4',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 45),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          '3000TK.',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff2BAE66),
                                          ),
                                        ),
                                        Text('/month'),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentScreen(),
                                      ),
                                    ),
                                    child: MybuttonW220(title: 'Pay Now'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: MybuttonW220(title: 'Book Now!'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
