import 'package:fake_spotify/model/queue_model.dart';
import 'package:get/get.dart';

class AstridSongsController extends GetxController {
  var popularSongs = <PopularSongsInfo>[].obs;

  @override
  void onInit() {
    fetchPopularSongs();
    super.onInit();
  }

  void fetchPopularSongs() {
    var songsList = [
      PopularSongsInfo(
          1, "https://cutt.ly/SbO3Yeb", "Hurts So Good", "123.456.789"),
      PopularSongsInfo(
          2, "https://cutt.ly/SbO3Yeb", "Good Choices", "123.456.789"),
      PopularSongsInfo(3, "https://cutt.ly/SbO3Yeb", "Emotion", "123.456.789"),
      PopularSongsInfo(4, "https://cutt.ly/7bOLiAD", "Years", "123.456.789"),
      PopularSongsInfo(5, "https://cutt.ly/SbO3Yeb", "It's Ok If You Forget Me",
          "123.456.789"),
    ];

    popularSongs.assignAll(songsList);
  }
}
