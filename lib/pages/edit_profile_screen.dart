import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 25.h),
            Mytextformfield(myHintText: 'Full Name', myObscureText: false),
            Mytextformfield(myHintText: 'Student ID', myObscureText: false),
            Mytextformfield(myHintText: 'Department', myObscureText: false),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 25.h),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2BAE66)),
                    borderRadius: BorderRadius.circular(10.r),
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
              margin: EdgeInsets.only(left: 24.w, right: 25.w, bottom: 25.h),
              child: IntlPhoneField(
                initialCountryCode: 'BD',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2BAE66)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 75.h),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Mybutton(title: 'Update'),
            ),
          ],
        ),
      ),
    );
  }
}
