import 'package:fake_spotify/controller/album_playlist/now_playing_controller.dart';
import 'package:fake_spotify/controller/lyrics_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/playback/lyrics.dart';
import 'package:fake_spotify/view/playback/queue_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigPlayer extends StatelessWidget {
  final _nowPlayingController = NowPlayingController();
  @override
  Widget build(BuildContext context) {
    var npc = _nowPlayingController.nowPlaying;
    return Scaffold(
      backgroundColor: kSecondBlack,
      appBar: PlayerAppBar(
        queueType: "album".toUpperCase(),
        queueFrom: "Leave It Beautiful",
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 40, top: 20),
                  alignment: Alignment.center,
                  child: Image.network(
                    npc.imageURL,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          npc.playerTrack,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 20),
                        ),
                        Text(
                          npc.playerArtist,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16, color: kSecondGrey),
                        ),
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
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
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
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.laptop_outlined,
                        color: kSecondGreen,
                      ),
                      label: Text(
                        "ASUS-M413DA",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: kSecondGreen),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.share_outlined,
                            color: kSecondGrey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.queue_music_outlined,
                            color: kSecondGrey,
                          ),
                          onPressed: () {
                            Get.to(() => QueueList());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Lyrics
          InkWell(
            onTap: () => Get.to(() => PlayerFullLyrics()),
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 30),
              decoration: BoxDecoration(
                color: Color(0xff3386d8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LYRICS",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 10),
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
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PlayerAppBar extends StatelessWidget with PreferredSizeWidget {
  const PlayerAppBar({
    Key? key,
    required this.queueType,
    required this.queueFrom,
  }) : super(key: key);

  final String queueType;
  final String queueFrom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            "PLAYING FROM $queueType",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 12,
                  letterSpacing: 0.5,
                ),
          ),
          Text(
            queueFrom,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  letterSpacing: 0.5,
                ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
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
