import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/navbar_pages/home_page.dart';
import 'package:flutter/material.dart';

class MyCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: ListView(
        children: [
          HeaderWithButtons(
            avatar: CircleAvatar(
              backgroundImage: NetworkImage("https://cutt.ly/Kbzul63"),
            ),
            headerText: "Koleksi kamu",
            iconData1: Icons.search_outlined,
            iconData2: Icons.add,
            onItemPressed1: () {},
            onItemPressed2: () {},
          ),
        ],
      ),
    );
  }
}
