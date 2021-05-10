import 'package:fake_spotify/controller/home_navbar.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNavBar(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryGreen,
        accentColor: kSecondGreen,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          subtitle1: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 1.0),
        ),
      ),
    );
  }
}
