import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/pages/confirmation_screen.dart';
import 'package:hall_management_ui/provider/radio_button_provider.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

class ProfileInfoScreen extends StatelessWidget {
  ProfileInfoScreen({super.key});

  final nameController = TextEditingController();

  final idController = TextEditingController();

  final departmentController = TextEditingController();

  final genderController = TextEditingController();

  final birthController = TextEditingController();

  final phoneController = TextEditingController();

  final List<String> gender = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill your profile',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xff2BAE66),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(
              height: 145.h,
              width: 165.w,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 72.5.r,
                    backgroundImage: AssetImage('assets/images/Ellipse.png'),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 115.w,
                    bottom: 20.h,
                    child: CircleAvatar(
                      radius: 20.r,
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
            SizedBox(height: 25.h),
            Mytextformfield(
              myController: nameController,
              myHintText: 'Full Name',
              myObscureText: false,
            ),
            Mytextformfield(
              myController: idController,
              myHintText: 'Student ID',
              myObscureText: false,
            ),
            Mytextformfield(
              myController: departmentController,
              myHintText: 'Department',
              myObscureText: false,
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 25.h),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2BAE66)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                items: ['Male', 'Female']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {
                  genderController.text = value!;
                },
              ),
            ),
            Mytextformfield(
              myController: birthController,
              myHintText: 'Date of birth',
              myObscureText: false,
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 25.h),
              child: IntlPhoneField(
                initialCountryCode: 'BD',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2BAE66)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 25.h,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<RadioButtonProvider>().buttonChange();
                    },
                    child: Icon(
                      context.watch<RadioButtonProvider>().isOnClickChange
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off_outlined,
                      color: Color(0xff2BAE66),
                    ),
                  ),
                  SizedBox(width: 13.w),
                  Text(
                    'I accept of the terms and conditions',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Urbanist'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.h),
            Mybutton(
              title: 'Sign up',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
