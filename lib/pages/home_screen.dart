import 'package:flutter/material.dart';
import 'package:hall_management_ui/custom_widgets/mybutton_w124.dart';
import 'package:hall_management_ui/custom_widgets/mybutton_w90.dart';
import 'package:hall_management_ui/pages/search_result_screen.dart';
import 'package:hall_management_ui/provider/button_color_provider.dart';
import 'package:hall_management_ui/provider/button_three_color_provider.dart';
import 'package:hall_management_ui/provider/button_two_color_provider.dart';
import 'package:hall_management_ui/provider/facility_provider.dart';
import 'package:hall_management_ui/provider/range_slider_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<String> facilities = const ['WiFi', 'Gym', 'Food', 'Monitoring'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 200,
          flexibleSpace: SafeArea(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 34,
                        width: 34,
                        child: Image(
                          image: AssetImage('assets/images/diulogo.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'DIU HALL',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, left: 23),
                  height: 41,
                  width: 307,
                  child: Text(
                    'Hello, Kabir!',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2BAE66),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18, left: 24, bottom: 23),
                  width: 381,
                  height: 56,
                  color: Color(0xffFAFAFA),
                  child: SearchBar(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchResultScreen(),
                      ),
                    ),
                    leading: Icon(Icons.search),
                    hintText: 'Search',
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: WidgetStatePropertyAll(0),
                    trailing: [
                      IconButton(
                        onPressed: () {
                          searchFilter(context);
                        },
                        icon: Icon(
                          Icons.format_list_bulleted,
                          color: Color(0xff2BAE66),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Consumer<ButtonColorProvider>(
              builder: (context, provider, child) {
                return TabBar(
                  onTap: (index) => provider.setIndex(index),
                  indicatorColor: Colors.transparent,
                  dividerHeight: 0,
                  tabs: [
                    Tab(
                      child: MybuttonW124(
                        title: 'Available',
                        index: 0,
                        currentIndex: provider.currentIndex,
                      ),
                    ),
                    Tab(
                      child: MybuttonW124(
                        title: 'Booked',
                        index: 1,
                        currentIndex: provider.currentIndex,
                      ),
                    ),
                    Tab(
                      child: MybuttonW124(
                        title: 'All Rooms',
                        index: 2,
                        currentIndex: provider.currentIndex,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //Tab1
            TabOneWidget(),

            //Tab2
            Text('Not Available Rooms'),

            //Tab3
            TabOneWidget(),
          ],
        ),
      ),
    );
  }

  Future<dynamic> searchFilter(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 850,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 163, bottom: 23),
                child: Text(
                  'Filter Hall',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              Divider(),
              SizedBox(height: 24),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Branch',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2BAE66),
                      ),
                    ),
                  ],
                ),
              ),
              Consumer<ButtonTwoColorProvider>(
                builder:
                    (
                      BuildContext context,
                      ButtonTwoColorProvider value,
                      Widget? child,
                    ) => Container(
                      margin: EdgeInsets.only(top: 18, left: 23),
                      child: Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          MybuttonW90(
                            title: 'Extension 1',
                            index: 0,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(0),
                          ),
                          MybuttonW90(
                            title: 'Extension 2',
                            index: 1,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(1),
                          ),
                          MybuttonW90(
                            title: 'Extension 3',
                            index: 2,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(2),
                          ),
                          MybuttonW90(
                            title: 'Extension 4',
                            index: 3,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(3),
                          ),
                        ],
                      ),
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 23),
                child: Text(
                  'Seat Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Consumer<ButtonThreeColorProvider>(
                builder:
                    (
                      BuildContext context,
                      ButtonThreeColorProvider value,
                      Widget? child,
                    ) => Container(
                      margin: EdgeInsets.only(top: 18, left: 23),
                      child: Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          MybuttonW90(
                            title: 'Single',
                            index: 0,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(0),
                          ),
                          MybuttonW90(
                            title: 'Double',
                            index: 1,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(1),
                          ),
                          MybuttonW90(
                            title: 'Three',
                            index: 2,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(2),
                          ),
                          MybuttonW90(
                            title: 'Four',
                            index: 3,
                            currentIndex: value.currentIndex,
                            onTap: () => value.setIndex(3),
                          ),
                        ],
                      ),
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 23),
                child: Text(
                  'Price Range',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Consumer<RangeSliderProvider>(
                      builder: (context, provider, child) {
                        return Column(
                          children: [
                            Text(
                              'Range: ${provider.currentValue.start.toInt()}-${provider.currentValue.end.toInt()}',
                            ),
                            SizedBox(height: 10),
                            SliderTheme(
                              data: SliderThemeData(
                                inactiveTrackColor: Color(0xffFFFFFF),
                                valueIndicatorColor: Color(0xff2BAE66),
                                overlayColor: Color(0xff2BAE66),
                              ),
                              child: RangeSlider(
                                activeColor: Color(0xff2BAE66),
                                values: provider.currentValue,
                                min: 0,
                                max: 10000,
                                divisions: 100,
                                labels: RangeLabels(
                                  provider.currentValue.start.toString(),
                                  provider.currentValue.end.toString(),
                                ),
                                onChanged: (newValue) {
                                  provider.updateValue(newValue);
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 23),
                child: Text(
                  'Facilities',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Consumer<FacilityProvider>(
                builder: (BuildContext context, provider, child) {
                  return Container(
                    margin: EdgeInsets.only(top: 18, left: 23),
                    child: Row(
                      children: facilities.map((facility) {
                        final isSelected = provider.isSelected(facility);
                        return InkWell(
                          borderRadius: BorderRadius.circular(6),
                          onTap: () => provider.toggleFacility(facility),
                          child: Row(
                            children: [
                              Checkbox(
                                value: isSelected,
                                onChanged: (_) =>
                                    provider.toggleFacility(facility),
                                activeColor: Colors.green,
                                checkColor: Colors.white,
                                side: BorderSide(color: Colors.green, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Text(
                                facility,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
              SizedBox(height: 150),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    Container(
                      height: 59,
                      width: 182,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xff2BAE66), width: 2),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2BAE66),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchResultScreen(),
                        ),
                      ),
                      child: Container(
                        height: 59,
                        width: 182,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xff2BAE66),
                            width: 2,
                          ),
                          color: Color(0xff2BAE66),
                        ),
                        child: Center(
                          child: Text(
                            'Apply Filter',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TabOneWidget extends StatelessWidget {
  const TabOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5F5F6),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 401,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: 23,
                      left: 21,
                      right: 7,
                      bottom: 33,
                    ),
                    height: 401,
                    width: 302,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Room.png'),
                      ),
                      borderRadius: BorderRadius.circular(45),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Available rooms',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2BAE66),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ...List.generate(
              5,
              (index) => Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 141,
                width: 381,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 21, left: 24),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/Room2.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 37, left: 30),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'Room 507 West',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text('YKSG-Ext 1'),
                          Row(
                            children: [
                              Text(
                                '3000TK.',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff2BAE66),
                                ),
                              ),
                              Text('month'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
