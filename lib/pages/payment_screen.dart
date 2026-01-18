import 'package:flutter/material.dart';
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
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 133, top: 51, right: 125),
            height: 142,
            width: 164,
            child: Image(image: AssetImage('assets/images/Icon.png')),
          ),
          SizedBox(height: 52),
          Container(
            margin: EdgeInsets.only(left: 47, right: 40),
            width: 337,
            child: Center(child: Text('Available Payment Methods')),
          ),
          SizedBox(height: 44),
          Card(
            elevation: 3,
            child: Container(
              width: 379,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: ListTile(
                  leading: SizedBox(
                    height: 42,
                    width: 53,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/1Card.png'),
                    ),
                  ),
                  title: Text(
                    'One Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
          SizedBox(height: 356),
          Mybutton(title: 'Continue',onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OneCardDetailsScreen(),
              ),
            ),),
        ],
      ),
    );
  }
}
