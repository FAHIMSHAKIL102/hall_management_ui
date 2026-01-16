import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/home_screen.dart';
import 'package:hall_management_ui/pages/payment_history_screen.dart';
import 'package:hall_management_ui/pages/profile_details_screen.dart';
import 'package:hall_management_ui/pages/search_result_screen.dart';
import 'package:hall_management_ui/provider/bottom_navigator_provider.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigatorProvider = context.watch<BottomNavigatorProvider>();
    return Scaffold(
      body: PageView(
        controller: bottomNavigatorProvider.pageController,
        children: [
          HomeScreen(),
          SearchResultScreen(),
          PaymentHistoryScreen(),
          ProfileDetailsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            tooltip: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Booking',
            tooltip: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
            tooltip: 'Profile',
          ),
        ],
        currentIndex: bottomNavigatorProvider.selectedIndex,
        selectedItemColor: Color(0xff2BAE66),
        unselectedItemColor: Color(0xff000000),
        onTap: bottomNavigatorProvider.onTapped,
      ),
    );
  }
}
