import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                        height: 300.h,
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('assets/images/Roomphoto.png'),
                        ),
                      ),
                      Positioned(
                        left: 20.w,
                        top: 50.h,
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
                    padding: EdgeInsets.only(left: 22.w, top: 22.h),
                    child: Text(
                      'Room W-507',
                      style: TextStyle(
                        fontSize: 31.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.w, top: 19.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff2BAE66),
                        ),
                        Text(
                          'Younus Khan Scholers Garden-Extention 1',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      top: 34.h,
                      right: 24.w,
                    ),
                    child: Divider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 30.h),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Gallery Photos',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2BAE66),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.h),
                  SizedBox(
                    height: 99.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 24.w),
                              height: 99.h,
                              width: 142.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/Roomphoto2.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12.w),
                              height: 99.h,
                              width: 142.w,
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
                              margin: EdgeInsets.only(left: 12.w),
                              height: 99.h,
                              width: 142.w,
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
                    padding: EdgeInsets.only(left: 23.w, top: 32.h),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18.h),
                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 50.w,
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
                              height: 50.h,
                              width: 50.w,
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
                              height: 50.h,
                              width: 50.w,
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
                    padding: EdgeInsets.only(left: 23.w, top: 32.h),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24.w, top: 18.h),
                    width: 360.w,
                    child: Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy Read more...',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, top: 32.h),
                    child: Text(
                      'Facilities',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Wifi.png'),
                            ),
                          ),
                          Text(
                            'Internet',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/3TimesFood.png'),
                            ),
                          ),
                          Text(
                            '3 Times Food',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Fitness.png'),
                            ),
                          ),
                          Text(
                            'Fitness Center',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Elevator.png'),
                            ),
                          ),
                          Text(
                            'Elevator',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Prayer.png'),
                            ),
                          ),
                          Text(
                            'Prayer Room',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Sports.png'),
                            ),
                          ),
                          Text(
                            'Sports Facilities',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image(
                              image: AssetImage('assets/images/Parking.png'),
                            ),
                          ),
                          Text(
                            'Parking Zone',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.h,
                            child: Image(
                              image: AssetImage(
                                'assets/images/247Monitoring.png',
                              ),
                            ),
                          ),
                          Text(
                            '24/7 Monitoring',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, top: 32.h),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.w, top: 18.h),
                    height: 176.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Location.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, top: 14.h),
                    child: Row(
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Icon(Icons.star, color: Color(0xffFED200)),
                        SizedBox(width: 6.w),
                        Text(
                          '4.7',
                          style: TextStyle(
                            color: Color(0xff2BAE66),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text('(45 reviews)'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 19.h),
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
                            horizontal: 25.w,
                            vertical: 22.h,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25.r,
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
                                  height: 33.h,
                                  width: 60.w,
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
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 22.w,
                                  right: 15.w,
                                  top: 12.h,
                                  bottom: 19.h,
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
                            horizontal: 25.w,
                            vertical: 11.h,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25.r,
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
                                  height: 33.h,
                                  width: 60.w,
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
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 22.w,
                                  right: 15.w,
                                  top: 12.h,
                                  bottom: 19.h,
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
                            horizontal: 25.w,
                            vertical: 11.h,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25.r,
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
                                  height: 33.h,
                                  width: 60.w,
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
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 22.w,
                                  right: 15.w,
                                  top: 12.h,
                                  bottom: 19.h,
                                ),
                                child: Text(
                                  'Very nice and comfortable place to live in. Always clean and 24 hours of electricity supply. Much place for indoor and outdoor games.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Container(
                          width: 381.w,
                          height: 52.h,
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
                                  fontSize: 15.sp,
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
            height: 124.h,
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
                  margin: EdgeInsets.only(left: 24.w, top: 30.h, right: 14.w),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        '3000TK.',
                        style: TextStyle(
                          fontSize: 30.sp,
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
                          height: 650.h,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 45.h),
                                child: Text(
                                  'Select your seat',
                                  style: TextStyle(
                                    fontSize: 31.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 42.h),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Container(
                                    width: 173.w,
                                    height: 167.h,
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
                                          height: 24.h,
                                          width: 24.w,
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
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffD9D9D9),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 173.w,
                                    height: 167.h,
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
                                          height: 24.h,
                                          width: 24.w,
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
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2BAE66),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40.h),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Container(
                                    width: 173.w,
                                    height: 167.h,
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
                                          height: 24.h,
                                          width: 24.w,
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
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 173.w,
                                    height: 167.h,
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
                                          height: 24.h,
                                          width: 24.w,
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
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFB1B1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 45.h),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        '3000TK.',
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff2BAE66),
                                        ),
                                      ),
                                      Text('/month'),
                                    ],
                                  ),
                                  MybuttonW220(
                                    title: 'Pay Now',
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentScreen(),
                                      ),
                                    ),
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
