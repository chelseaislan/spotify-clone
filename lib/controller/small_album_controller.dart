import 'package:fake_spotify/model/album_header_model.dart';
import 'package:fake_spotify/view/album_playlist/album_single_screen.dart';
import 'package:get/get.dart';

class SecondAlbumController extends GetxController {
  var smallHeaderAlbum = <SecondAlbumModel>[].obs;

  @override
  void onInit() {
    fetchSmallAlbum();
    super.onInit();
  }

  void fetchSmallAlbum() {
    var smallAlbumItems = [
      SecondAlbumModel("https://cutt.ly/5bOH1Pi", "Leave It Beautiful 🚸", () {
        Get.to(AlbumPage());
      }),
      SecondAlbumModel("https://cutt.ly/lbOH8m9", "Crowded House", () {}),
      SecondAlbumModel("https://cutt.ly/DbOH54X", "Higher Power", () {}),
      SecondAlbumModel("https://cutt.ly/MbOJrwU", "Rush Street", () {}),
      SecondAlbumModel("https://cutt.ly/BbOJitt", "Ultimate Kenny G", () {}),
      SecondAlbumModel("https://cutt.ly/ibOJaLU", "InnerSpeaker", () {}),
    ];
    smallHeaderAlbum.assignAll(smallAlbumItems);
  }
}
