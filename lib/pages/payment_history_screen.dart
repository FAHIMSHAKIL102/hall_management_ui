import 'package:flutter/material.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment History',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 78,
            width: 381,
            child: ListTile(
              leading: CircleAvatar(
                radius: 23,
                child: Image(image: AssetImage('assets/images/diulogo.png')),
              ),
              title: Text(
                'Hall Seat fee',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2BAE66),
                ),
              ),
              subtitle: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 10, color: Color(0xff000000)),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff9E9E9E),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
