import 'package:fake_spotify/model/album_header_model.dart';
import 'package:get/get.dart';

class LyricsController extends GetxController {
  var lyricsInfo = <LyricsInfo>[].obs;

  @override
  void onInit() {
    fetchLyrics();
    super.onInit();
  }

  void fetchLyrics() {
    var lyricsDetail = [
      LyricsInfo("We're no strangers to love"),
      LyricsInfo("You know the rules and so do I"),
      LyricsInfo("A full commitment's what I'm thinking of"),
      LyricsInfo("You wouldn't get this from any other guy"),
      LyricsInfo("I just wanna tell you how I'm feeling"),
    ];
    lyricsInfo.assignAll(lyricsDetail);
  }
}
