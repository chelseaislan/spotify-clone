import 'package:fake_spotify/controller/album_playlist/now_playing_controller.dart';
import 'package:fake_spotify/controller/lyrics_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayerFullLyrics extends StatelessWidget {
  final _nowPlayingController = NowPlayingController();
  @override
  Widget build(BuildContext context) {
    var npc = _nowPlayingController.nowPlaying;
    return Scaffold(
      backgroundColor: Color(0xff3386d8),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            npc.imageURL,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          SizedBox(width: 15),
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
                                    .copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.cancel_outlined),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
                // Lyrics
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
              ],
            ),
            Positioned(
              bottom: 40,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                color: Color(0xff3386d8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    IconButton(
                      icon: Icon(
                        Icons.play_circle_filled_outlined,
                        size: 70,
                      ),
                      onPressed: () {},
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
