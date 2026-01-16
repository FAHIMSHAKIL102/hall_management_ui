import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/edit_profile_screen.dart';
import 'package:hall_management_ui/pages/signin_screen.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              Container(
                height: 34,
                width: 34,
                child: Image(image: AssetImage('assets/images/diulogo.png')),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 307,
                child: Text(
                  'DIU HALL',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: Image(image: AssetImage('assets/images/3dots.png')),
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 42, left: 140, right: 135),
            height: 145,
            width: 165,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 72.5,
                  backgroundImage: AssetImage('assets/images/Kimjun.png'),
                ),
                Positioned(
                  top: 100,
                  left: 115,
                  bottom: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff2BAE66),
                    child: Icon(
                      Icons.camera_alt,
                      color: Color(0xffFFFFFF),
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 30),
            height: 36,
            width: 337,
            child: Center(
              child: Text(
                'Muhtasim Kabir',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2BAE66),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 30),
            height: 18,
            width: 130,
            child: Center(
              child: Text(
                'kabir35@diu.edu.bd',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19),
            child: Divider(),
          ),
          Container(
            margin: EdgeInsets.only(top: 11, left: 17),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 42,
                        width: 42,
                        child: Image(
                          image: AssetImage('assets/images/Profile1.png'),
                        ),
                      ),
                      SizedBox(width: 17),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33),
                Row(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 42,
                      child: Image(
                        image: AssetImage('assets/images/IconPayhistory.png'),
                      ),
                    ),
                    SizedBox(width: 17),
                    Text(
                      'Payment History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 33),
                Row(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 42,
                      child: Image(image: AssetImage('assets/images/Lock.png')),
                    ),
                    SizedBox(width: 17),
                    Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 91),
                Row(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 42,
                      child: Image(
                        image: AssetImage('assets/images/IconSignout.png'),
                      ),
                    ),
                    SizedBox(width: 17),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 355,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 33),
                                    child: Text(
                                      'Sign out',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFF5C5C),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 31),
                                    child: Divider(),
                                  ),
                                  Text(
                                    'Are you sure to Sign out?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 22),
                                  InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SigninScreen(),
                                      ),
                                    ),
                                    child: Container(
                                      height: 55,
                                      width: 243,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: Color(0xff2BAE66),
                                          width: 2,
                                        ),
                                        color: Color(0xff2BAE66),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sign Out',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    height: 55,
                                    width: 243,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                        color: Color(0xff2BAE66),
                                        width: 2,
                                      ),
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2BAE66),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFF5C5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
