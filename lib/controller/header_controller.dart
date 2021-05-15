import 'package:fake_spotify/model/album_header_model.dart';
import 'package:fake_spotify/view/profile_settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class PlainHeaderController extends GetxController {
//   var headerDetails = PlainHeaderModel("Made for you");
// }

class PrimaryHeaderController extends GetxController {
  var headerDetails = PrimaryHeaderModel(
      "Good morning", Icons.replay, Icons.settings_outlined, () {}, () {
    Get.to(() => SettingsPage());
  });
}
