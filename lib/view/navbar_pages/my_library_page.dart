import 'package:fake_spotify/controller/library_controller.dart';
import 'package:fake_spotify/controller/small_player_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/navbar_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLibrary extends StatelessWidget {
  final _smallPlayerCont = SmallPlayerController();
  @override
  Widget build(BuildContext context) {
    var smpc = _smallPlayerCont.playerDetails;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: PrimaryHeader(
                headerTitle: "Your Library",
                iconData1: Icons.search_outlined,
                iconData2: Icons.add,
                onItemPressed1: () {},
                onItemPressed2: () {},
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kPrimaryBlack,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, left: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(Icons.sort_rounded),
                              SizedBox(width: 10),
                              Text("Recently Played"),
                            ],
                          ),
                        ),
                        Icon(Icons.qr_code_rounded),
                      ],
                    ),
                  ),
                  GetX<MyLibraryController>(
                    init: MyLibraryController(),
                    initState: (_) {},
                    builder: (controller) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.libraryDetails.length,
                        itemBuilder: (context, index) {
                          return LibraryItems(
                            imageURL: controller.libraryDetails[index].imageURL,
                            libraryTitle:
                                controller.libraryDetails[index].libraryTitle,
                            libraryType:
                                controller.libraryDetails[index].libraryType,
                            libraryUser:
                                controller.libraryDetails[index].libraryUser,
                            onItemTap:
                                controller.libraryDetails[index].onItemTap,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 60),
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

class LibraryItems extends StatelessWidget {
  const LibraryItems({
    Key? key,
    required this.imageURL,
    required this.libraryTitle,
    required this.libraryType,
    required this.libraryUser,
    this.onItemTap,
  }) : super(key: key);

  final String imageURL;
  final String libraryTitle;
  final String libraryType;
  final String libraryUser;
  final Function()? onItemTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(imageURL, width: 70),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  libraryTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "$libraryType • $libraryUser",
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
