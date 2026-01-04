import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileInfoScreen extends StatelessWidget {
  ProfileInfoScreen({super.key});

  final nameController = TextEditingController();

  final idController = TextEditingController();

  final departmentController = TextEditingController();

  final genderController = TextEditingController();

  final birthController = TextEditingController();

  final phoneController = TextEditingController();

  List<String> gender = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill your profile',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xff2BAE66),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              height: 145,
              width: 165,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 72.5,
                    backgroundImage: AssetImage('assets/images/Ellipse.png'),
                  ),
                  Positioned(
                    top: 100,
                    left: 115,
                    bottom: 20,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff2BAE66),
                      child: Icon(Icons.camera_alt, color: Color(0xffFFFFFF),size: 16,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
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
              margin: EdgeInsets.only(left: 24, right: 25, bottom: 25),
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
              margin: EdgeInsets.only(left: 24, right: 25, bottom: 25),
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
            SizedBox(height: 6),
            Container(
              height: 14,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Radio(value: Color(0xff2BAE66), toggleable: true),
                  Text(
                    'I accept of the terms and conditions',
                    style: TextStyle(fontSize: 12, fontFamily: 'Urbanist'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31),
            Mybutton(title: 'Sign up'),
          ],
        ),
      ),
    );
  }
}
