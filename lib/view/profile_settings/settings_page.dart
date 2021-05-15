import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
        ),
        iconTheme: IconThemeData(color: kWhite),
        backgroundColor: kSecondBlack,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ProfileContainer(),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://cutt.ly/CbZNmXx"),
              radius: 40,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Synyster Gates",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: kWhite),
                ),
                Text(
                  "View Profile",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: kSecondGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
