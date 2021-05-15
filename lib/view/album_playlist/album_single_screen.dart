import 'package:fake_spotify/controller/album_playlist/album_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/album_playlist/artist_page.dart';
import 'package:fake_spotify/view/navbar_pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: kWhite),
        title: Text(
          "Leave It Beautiful",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        backgroundColor: kSecondBlack,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite_rounded,
                color: kSecondGreen,
              ),
              onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            MainAlbumContainer(),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(titleText: "Downloaded"),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: kSecondGreen,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  color: kPrimaryGrey,
                  height: 3,
                ),
              ],
            ),
            GetX<AlbumControllerLIB>(
              init: AlbumControllerLIB(),
              initState: (_) {},
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.trackLists.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return TracklistContainer(
                      songTitle: controller.trackLists[index].songTitle,
                      songArtist: controller.trackLists[index].songArtist,
                      isDownloaded: controller.trackLists[index].isDownloaded,
                      isExplicit: controller.trackLists[index].isExplicit,
                      onItemTap: () {},
                    );
                  },
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("16 October 2020"),
                  Text("10 songs • 28 mins 36 secs"),
                  Text("© ℗ 2020 Universal Music A/S"),
                ],
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => ArtistPage()),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://cutt.ly/Zbl3HV1"),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Astrid S",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TracklistContainer extends StatelessWidget {
  const TracklistContainer({
    Key? key,
    required this.songTitle,
    required this.songArtist,
    required this.isDownloaded,
    required this.isExplicit,
    this.onItemTap,
  }) : super(key: key);

  final String songTitle;
  final String songArtist;
  final bool isDownloaded;
  final bool isExplicit;
  final Function()? onItemTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songTitle,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_down_outlined,
                      size: 16,
                      color: kSecondGreen,
                    ),
                    SizedBox(width: 5),
                    Text(
                      songArtist,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: kSecondGrey),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: kSecondGrey,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class MainAlbumContainer extends StatelessWidget {
  const MainAlbumContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kPrimaryGrey, kPrimaryBlack],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.only(top: 60, bottom: 20),
      child: Column(
        children: [
          Image.network(
            "https://cutt.ly/SbO3Yeb",
            width: MediaQuery.of(context).size.width * 0.4,
          ),
          SizedBox(height: 20),
          Text(
            "Leave It Beautiful",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                ),
          ),
          SizedBox(height: 5),
          Text(
            "Album by Astrid S • 2020",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: kSecondGrey,
                ),
          ),
          SizedBox(height: 20),
          ShuffleButton(),
        ],
      ),
    );
  }
}

class ShuffleButton extends StatelessWidget {
  const ShuffleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Text(
          "Shuffle play",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                color: kPrimaryBlack,
              ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: kSecondGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
