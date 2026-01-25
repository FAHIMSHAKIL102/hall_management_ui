import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment History',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 78.h,
            width: 381.w,
            child: ListTile(
              leading: CircleAvatar(
                radius: 23.r,
                child: Image(image: AssetImage('assets/images/diulogo.png')),
              ),
              title: Text(
                'Hall Seat fee',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2BAE66),
                ),
              ),
              subtitle: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 10.sp, color: Color(0xff000000)),
                  children: <TextSpan>[
                    TextSpan(text: '11 April 2022'),
                    TextSpan(
                      text: '\nTransaction ID: 5786896896',
                      style: TextStyle(color: Color(0xff9E9E9E)),
                    ),
                  ],
                ),
              ),
              trailing: Text(
                '3000TK',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff9E9E9E),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Divider(),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
