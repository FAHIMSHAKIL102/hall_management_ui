import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/myTextFormfield.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit your profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 25),
            Mytextformfield(myHintText: 'Full Name', myObscureText: false),
            Mytextformfield(myHintText: 'Student ID', myObscureText: false),
            Mytextformfield(myHintText: 'Department', myObscureText: false),
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
            Mytextformfield(myHintText: 'Date of birth', myObscureText: false),
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
            SizedBox(height: 75),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
              child: Mybutton(title: 'Update'),
            ),
          ],
        ),
      ),
    );
  }
}
