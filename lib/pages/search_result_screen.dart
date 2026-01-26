import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_management_ui/custom_widgets/mybutton_w124.dart';
import 'package:hall_management_ui/pages/room_view_screen.dart';
import 'package:hall_management_ui/provider/button_color_provider.dart';
import 'package:hall_management_ui/provider/search_room_provider.dart';
import 'package:provider/provider.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<SearchRoomProvider>();
    final rooms = provider.filteredRooms;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              width: 381.w,
              height: 56.h,
              color: Color(0xffFAFAFA),
              child: SearchBar(
                onChanged: provider.setSearch,
                leading: Icon(Icons.search),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                elevation: WidgetStatePropertyAll(0),
              ),
            ),
            SizedBox(height: 20.h),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.h),
            child: Consumer<ButtonColorProvider>(
              builder: (context, provider, child) {
                return TabBar(
                  onTap: (index) {
                    provider.setIndex(index);
                  },
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24.w, top: 10.h, bottom: 14.h),
                    child: Text(
                      'Filtered(2,532)',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Color(0xffF5F5F6),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          ...List.generate(
                            rooms.length,
                            (index) => InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RoomViewScreen(),
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20.h),
                                height: 141.h,
                                width: 381.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 21.h,
                                        left: 24.w,
                                      ),
                                      height: 100.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.r),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/Room2.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 37.h,
                                        left: 30.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text(
                                            rooms[index].name,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            '${rooms[index].extension}-${rooms[index].direction}',
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                rooms[index].price.toString(),
                                                style: TextStyle(
                                                  fontSize: 20.sp,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, top: 10.h, bottom: 14.h),
              child: Text(
                'Filtered(2,532)',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, top: 10.h, bottom: 14.h),
              child: Text(
                'Filtered(2,532)',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room {
  final String name;
  final String extension;
  final String direction;
  final int price;

  Room({
    required this.name,
    required this.extension,
    required this.direction,
    required this.price,
  });
}
