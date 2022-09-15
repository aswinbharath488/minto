import 'package:flutter/material.dart';
import 'package:minto/constants.dart';
import 'package:minto/screens/home/widgets/hotel_scroll_view.dart';

import 'package:minto/screens/home/widgets/section_title.dart';
import 'package:minto/screens/home/widgets/welcome_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            WelcomeWidget(),
            SizedBox(
              height: 20,
            ),
            SectionTile(
              title: "Top Hotel ",
            ),
            HotelScrollView(),
            SectionTile(
              title: "Popular Hotel ",
            ),
            HotelScrollView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          currentIndex: _pageCount,
          onTap: (value) {
            setState(() {
              _pageCount = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark_outlined),
                label: "History "),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: "Account"),
          ]),
    );
  }
}
