import 'package:flutter/material.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              width: 381,
              height: 56,
              color: Color(0xffFAFAFA),
              child: SearchBar(
                leading: Icon(Icons.search),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                elevation: WidgetStatePropertyAll(0),
              ),
            ),
          ],
        ),
        body: Column(),
      ),
    );
  }
}
