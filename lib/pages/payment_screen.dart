import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/mybutton.dart';
import 'package:hall_management_ui/pages/one_card_details_screen.dart';
import 'package:hall_management_ui/provider/radio_button_provider.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 133.w, top: 51.h, right: 125.w),
            height: 142.h,
            width: 164.w,
            child: Image(image: AssetImage('assets/images/Icon.png')),
          ),
          SizedBox(height: 52.h),
          Container(
            margin: EdgeInsets.only(left: 47.w, right: 40.w),
            width: 337.w,
            child: Center(child: Text('Available Payment Methods')),
          ),
          SizedBox(height: 44.h),
          Card(
            elevation: 3,
            child: Container(
              width: 379.w,
              height: 83.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: ListTile(
                  leading: SizedBox(
                    height: 42.h,
                    width: 53.w,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/1Card.png'),
                    ),
                  ),
                  title: Text(
                    'One Card',
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                  trailing: InkWell(
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
                ),
              ),
            ),
          ),
          SizedBox(height: 356.h),
          Mybutton(
            title: 'Continue',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OneCardDetailsScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
