import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/navbar_pages/home_page.dart';
import 'package:fake_spotify/navbar_pages/my_collection.dart';
import 'package:fake_spotify/navbar_pages/search_page.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  var selectedIndex = 0;
  var widgetOptions = [
    HomePage(),
    SearchPage(),
    MyCollection(),
  ];

  void onItemTap(var index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: black2,
        type: BottomNavigationBarType.fixed,
        items: [
          bottomNavBarItem(Icons.home_outlined, "Beranda"),
          bottomNavBarItem(Icons.search_outlined, "Cari"),
          bottomNavBarItem(Icons.video_collection_outlined, "Koleksi Kamu"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
        selectedItemColor: white,
        unselectedItemColor: grey4,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItem(navBarIconData, navBarText) {
    return BottomNavigationBarItem(
      icon: Icon(navBarIconData),
      label: navBarText,
      tooltip: navBarText,
    );
  }
}
