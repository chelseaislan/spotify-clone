import 'package:fake_spotify/controller/album_playlist/popular_songs_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/album_playlist/album_single_screen.dart';
import 'package:fake_spotify/view/navbar_pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        title: Text(
          "Astrid S",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
        ),
        iconTheme: IconThemeData(color: kWhite),
        elevation: 0,
        backgroundColor: kSecondBlack,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "FOLLOW",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: [kWhite, kPrimaryBlack],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Image.network(
                  "https://cutt.ly/zbZJla0",
                ),
              ),
              Positioned.fill(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Astrid S",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: kWhite, fontSize: 48),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "10.000.000 MONTHLY LISTENERS",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: kSecondGrey),
                      ),
                      SizedBox(height: 30),
                      ShuffleButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleText(titleText: "Popular Songs"),
                GetX<AstridSongsController>(
                  init: AstridSongsController(),
                  initState: (_) {},
                  builder: (controller) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.popularSongs.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PopularSongs(
                          songsRank: controller.popularSongs[index].songsRank,
                          imageURL: controller.popularSongs[index].imageURL,
                          songTitle: controller.popularSongs[index].songTitle,
                          playAmount: controller.popularSongs[index].playAmount,
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
    );
  }
}

class PopularSongs extends StatelessWidget {
  const PopularSongs({
    Key? key,
    required this.songsRank,
    required this.imageURL,
    required this.songTitle,
    required this.playAmount,
  }) : super(key: key);

  final int songsRank;
  final String imageURL;
  final String songTitle;
  final String playAmount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            Expanded(flex: 1, child: Text(songsRank.toString())),
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  Image.network(imageURL, width: 50),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songTitle,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        playAmount,
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
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
