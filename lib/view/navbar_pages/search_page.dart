import 'package:fake_spotify/controller/genre_types_controller.dart';
import 'package:fake_spotify/controller/small_player_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class SearchPage extends StatelessWidget {
  final _smallPlayerCont = SmallPlayerController();
  @override
  Widget build(BuildContext context) {
    var smpc = _smallPlayerCont.playerDetails;

    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBarWithSearch(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  TitleText(titleText: "Your top genres"),
                  GetX<GenreControllerA>(
                    init: GenreControllerA(),
                    initState: (_) {},
                    builder: (controller) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 8,
                          mainAxisExtent: 100,
                        ),
                        itemCount: controller.genreTypes.length,
                        itemBuilder: (context, index) {
                          return AlbumContainer3(
                            imageURL: controller.genreTypes[index].imageURL,
                            genreTitle: controller.genreTypes[index].genreTitle,
                            genreColor: controller.genreTypes[index].genreColor,
                            onItemTap: controller.genreTypes[index].onItemTap,
                          );
                        },
                      );
                    },
                  ),
                  TitleText(titleText: "Browse all genres"),
                  GetX<GenreControllerB>(
                    init: GenreControllerB(),
                    initState: (_) {},
                    builder: (controller) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 8,
                          mainAxisExtent: 100,
                        ),
                        itemCount: controller.genreTypes.length,
                        itemBuilder: (context, index) {
                          return AlbumContainer3(
                            imageURL: controller.genreTypes[index].imageURL,
                            genreTitle: controller.genreTypes[index].genreTitle,
                            genreColor: controller.genreTypes[index].genreColor,
                            onItemTap: controller.genreTypes[index].onItemTap,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 80),
                ],
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

class AlbumContainer3 extends StatelessWidget {
  final String imageURL;
  final String genreTitle;
  final Color? genreColor;
  final Function()? onItemTap;
  const AlbumContainer3({
    Key? key,
    required this.genreTitle,
    required this.imageURL,
    required this.genreColor,
    this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(top: 10, left: 10),
        height: 80,
        decoration: BoxDecoration(
          color: genreColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      genreTitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            RotationTransition(
                turns: AlwaysStoppedAnimation(25 / 360),
                child: Image.network(imageURL, width: 55)),
          ],
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String titleText;
  const TitleText({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
      child: Text(titleText,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18)),
    );
  }
}

class AppBarWithSearch extends StatelessWidget {
  const AppBarWithSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryBlack,
      elevation: 0,
      title: Text("Search",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18)),
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                color: kPrimaryBlack,
              ),
              SizedBox(width: 10),
              Text(
                "Artists, songs, or podcasts",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: kPrimaryBlack, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
