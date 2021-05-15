import 'package:fake_spotify/controller/big_album_controller.dart';
import 'package:fake_spotify/controller/small_album_controller.dart';
import 'package:fake_spotify/controller/header_controller.dart';
import 'package:fake_spotify/controller/small_player_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/album_playlist/artist_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final _primaryHeaderCont = PrimaryHeaderController();
  final _smallPlayerCont = SmallPlayerController();
  @override
  Widget build(BuildContext context) {
    // Abbreviations
    var prhc = _primaryHeaderCont.headerDetails;
    var smpc = _smallPlayerCont.playerDetails;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kPrimaryGrey, kPrimaryBlack],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.001, 0.3],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    PrimaryHeader(
                      headerTitle: prhc.headerTitle,
                      iconData1: prhc.iconData1,
                      iconData2: prhc.iconData2,
                      onItemPressed1: prhc.onItemPressed1,
                      onItemPressed2: prhc.onItemPressed2,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: GetX<SecondAlbumController>(
                        init: SecondAlbumController(),
                        initState: (_) {},
                        builder: (controller) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 2,
                              mainAxisExtent: 60,
                            ),
                            itemCount: controller.smallHeaderAlbum.length,
                            itemBuilder: (context, index) {
                              return SecondAlbum(
                                imageURL:
                                    controller.smallHeaderAlbum[index].imageURL,
                                albumTitle: controller
                                    .smallHeaderAlbum[index].albumTitle,
                                onItemTap: controller
                                    .smallHeaderAlbum[index].onItemTap,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    AvatarHeader(
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      headerTitle: "Astrid S 🚸",
                      headerDesc: "SIMILAR TO",
                      onItemTap: () {
                        Get.to(() => ArtistPage());
                      },
                    ),
                    SizedBox(
                      height: 200,
                      child: GetX<BigAlbumControllerA>(
                        init: BigAlbumControllerA(),
                        initState: (_) {},
                        builder: (controller) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.bigHeaderAlbum.length,
                            itemBuilder: (context, index) {
                              return PrimaryAlbum(
                                imageURL:
                                    controller.bigHeaderAlbum[index].imageURL,
                                albumDesc:
                                    controller.bigHeaderAlbum[index].albumDesc,
                                onItemTap:
                                    controller.bigHeaderAlbum[index].onItemTap,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    PlainHeader(headerText: "Live music anywhere!"),
                    SizedBox(
                      height: 200,
                      child: GetX<BigAlbumControllerB>(
                        init: BigAlbumControllerB(),
                        initState: (_) {},
                        builder: (controller) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.bigHeaderAlbum.length,
                            itemBuilder: (context, index) {
                              return PrimaryAlbum(
                                imageURL:
                                    controller.bigHeaderAlbum[index].imageURL,
                                albumDesc:
                                    controller.bigHeaderAlbum[index].albumDesc,
                                onItemTap:
                                    controller.bigHeaderAlbum[index].onItemTap,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    AvatarHeader(
                      imageURL: "https://cutt.ly/rbOZVYX",
                      headerTitle: "Coldplay",
                      headerDesc: "SIMILAR TO",
                      onItemTap: () {
                        Get.to(() => ArtistPage());
                      },
                    ),
                    SizedBox(
                      height: 200,
                      child: GetX<BigAlbumControllerC>(
                        init: BigAlbumControllerC(),
                        initState: (_) {},
                        builder: (controller) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.bigHeaderAlbum.length,
                            itemBuilder: (context, index) {
                              return PrimaryAlbum(
                                imageURL:
                                    controller.bigHeaderAlbum[index].imageURL,
                                albumDesc:
                                    controller.bigHeaderAlbum[index].albumDesc,
                                onItemTap:
                                    controller.bigHeaderAlbum[index].onItemTap,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            SmallPlayer(
              imageURL: smpc.imageURL,
              playerTrack: smpc.playerTrack,
              playerArtist: smpc.playerArtist,
              iconData1: smpc.iconData1,
              iconData1Color: smpc.iconData1Color,
              iconData2: smpc.iconData2,
              onItemTap: smpc.onItemTap,
              containerColor: kSecondBlack,
            ),
          ],
        ),
      ),
    );
  }
}

class SmallPlayer extends StatelessWidget {
  const SmallPlayer({
    Key? key,
    required this.imageURL,
    required this.playerTrack,
    required this.playerArtist,
    this.iconData1,
    this.iconData1Color,
    this.iconData2,
    this.onItemTap,
    required this.containerColor,
  }) : super(key: key);

  final String imageURL;
  final String playerTrack;
  final String playerArtist;
  final IconData? iconData1;
  final Color? iconData1Color;
  final IconData? iconData2;
  final Function()? onItemTap;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: InkWell(
        onTap: onItemTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(color: containerColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(imageURL, width: 50),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        playerTrack,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        playerArtist,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(iconData1, color: iconData1Color),
                  SizedBox(width: 10),
                  Icon(iconData2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlainHeader extends StatelessWidget {
  final String headerText;
  const PlainHeader({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.fromLTRB(5, 15, 15, 15),
      alignment: Alignment.centerLeft,
      child: Text(
        headerText,
        style: Theme.of(context).textTheme.headline1!.copyWith(color: kWhite),
      ),
    );
  }
}

class PrimaryAlbum extends StatelessWidget {
  final String imageURL;
  final String albumDesc;
  final Function()? onItemTap;
  const PrimaryAlbum({
    Key? key,
    required this.imageURL,
    required this.albumDesc,
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        height: 200,
        width: 140,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageURL,
              width: 140,
            ),
            SizedBox(height: 10),
            Flexible(
              child: Container(
                child: Text(albumDesc,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: kSecondGrey, letterSpacing: 0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarHeader extends StatelessWidget {
  final String imageURL;
  final String headerTitle;
  final String headerDesc;
  final Function()? onItemTap;
  const AvatarHeader({
    Key? key,
    required this.imageURL,
    required this.headerTitle,
    required this.headerDesc,
    this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(5, 15, 15, 15),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageURL),
              radius: 25,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerDesc,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: kSecondGrey,
                      ),
                ),
                Text(
                  headerTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: kWhite, letterSpacing: 1),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondAlbum extends StatelessWidget {
  final String imageURL;
  final String albumTitle;
  final Function()? onItemTap;
  const SecondAlbum({
    Key? key,
    required this.imageURL,
    required this.albumTitle,
    this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: kPrimaryGrey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(
                    5,
                  )),
              child: Image.network(
                imageURL,
                width: 50,
              ),
            ),
            SizedBox(width: 8),
            Flexible(
              child: Container(
                child: Text(
                  albumTitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryHeader extends StatelessWidget {
  final String headerTitle;
  final IconData iconData1;
  final IconData iconData2;
  final Function()? onItemPressed1;
  final Function()? onItemPressed2;
  const PrimaryHeader({
    Key? key,
    required this.headerTitle,
    required this.iconData1,
    required this.iconData2,
    required this.onItemPressed1,
    required this.onItemPressed2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(headerTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: kWhite)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onItemPressed1,
                icon: Icon(iconData1, size: 25),
              ),
              IconButton(
                onPressed: onItemPressed2,
                icon: Icon(iconData2, size: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
