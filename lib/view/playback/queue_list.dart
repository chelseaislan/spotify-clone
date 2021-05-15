import 'package:fake_spotify/controller/queue_controller.dart';
import 'package:fake_spotify/controller/small_player_controller.dart';
import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/view/navbar_pages/home_page.dart';
import 'package:fake_spotify/view/navbar_pages/search_page.dart';
import 'package:fake_spotify/view/playback/big_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueueList extends StatelessWidget {
  final _smallPlayerCont = SmallPlayerController();
  @override
  Widget build(BuildContext context) {
    var smpc = _smallPlayerCont.playerDetails;
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: PlayerAppBar(
        queueType: "album".toUpperCase(),
        queueFrom: "Leave It Beautiful",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            TitleText(titleText: "Now Playing"),
            SmallPlayer(
              imageURL: smpc.imageURL,
              playerTrack: smpc.playerTrack,
              playerArtist: smpc.playerArtist,
              containerColor: kPrimaryBlack,
            ),
            TitleText(titleText: "Next Songs"),
            GetX<QueueController>(
              init: QueueController(),
              initState: (_) {},
              builder: (controller) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.queueList.length,
                  itemBuilder: (context, index) {
                    return QueueWidget(
                      songTitle: controller.queueList[index].songTitle,
                      songArtist: controller.queueList[index].songArtist,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class QueueWidget extends StatelessWidget {
  const QueueWidget({
    Key? key,
    required this.songTitle,
    required this.songArtist,
  }) : super(key: key);

  final String songTitle;
  final String songArtist;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songTitle,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    songArtist,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: kSecondGrey,
                        ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: kSecondGrey,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
