import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton_w90.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Container(width: 350,
          child: SearchBar(leading: Icon(Icons.search), hintText: 'Search'))],
      ),
      body: Column(children: [MybuttonW90(title: 'ab')]),
    );
  }
}
