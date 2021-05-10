import 'package:fake_spotify/controller/lyrics_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondBlack,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kSecondBlack,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: kWhite,
            ),
            onPressed: () {
              Get.back();
            }),
        title: Column(
          children: [
            Text(
              "PLAYING FROM PLAYLIST",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              "Top #2",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {},
            color: kWhite,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  child: Image.network(
                    "https://cutt.ly/SbO3Yeb",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hurts So Good",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 20),
                        ),
                        Text("Astrid S",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontSize: 16, color: kSecondGrey)),
                      ],
                    ),
                    PlayerMainButtons(
                      iconData: Icons.favorite_rounded,
                      size: 30,
                      iconColor: kSecondGreen,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      height: 3,
                      decoration: BoxDecoration(
                          color: kSecondGrey,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0:00"),
                        Text("4:20"),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PlayerMainButtons(
                      iconData: Icons.shuffle_outlined,
                      size: 20,
                      onItemPressed: () {},
                      iconColor: kWhite,
                    ),
                    PlayerMainButtons(
                      iconData: Icons.skip_previous_sharp,
                      size: 40,
                      onItemPressed: () {},
                      iconColor: kWhite,
                    ),
                    PlayerMainButtons(
                      iconData: Icons.play_circle_filled_outlined,
                      size: 70,
                      onItemPressed: () {},
                      iconColor: kWhite,
                    ),
                    PlayerMainButtons(
                      iconData: Icons.skip_next_sharp,
                      size: 40,
                      onItemPressed: () {},
                      iconColor: kWhite,
                    ),
                    PlayerMainButtons(
                      iconData: Icons.repeat_outlined,
                      size: 20,
                      onItemPressed: () {},
                      iconColor: kWhite,
                    ),
                  ],
                )
              ],
            ),
          ),
          // Lyrics
          Container(
            margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
            decoration: BoxDecoration(
              color: Color(0xff3386d8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LYRICS",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 20),
                  GetX<LyricsController>(
                    init: LyricsController(),
                    initState: (_) {},
                    builder: (controller) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.lyricsInfo.length,
                        itemBuilder: (context, index) {
                          return Text(
                            controller.lyricsInfo[index].lyrics,
                            style: Theme.of(context).textTheme.headline1,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PlayerMainButtons extends StatelessWidget {
  const PlayerMainButtons({
    Key? key,
    required this.iconData,
    this.onItemPressed,
    required this.size,
    required this.iconColor,
  }) : super(key: key);

  final IconData iconData;
  final Function()? onItemPressed;
  final double size;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        iconSize: size,
        icon: Icon(
          iconData,
          color: iconColor,
        ),
        onPressed: onItemPressed,
      ),
    );
  }
}
