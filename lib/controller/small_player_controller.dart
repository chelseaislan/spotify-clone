import 'package:fake_spotify/misc/colors.dart';
import 'package:fake_spotify/model/album_header_model.dart';
import 'package:fake_spotify/view/playback/big_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmallPlayerController extends GetxController {
  var playerDetails = SmallPlayerModel(
      "https://cutt.ly/5bOH1Pi",
      "Hurts So Good",
      "Astrid S",
      Icons.favorite_rounded,
      kPrimaryGreen,
      Icons.pause_outlined, () {
    Get.to(() => BigPlayer());
  });
}
