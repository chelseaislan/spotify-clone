import 'package:fake_spotify/model/album_header_model.dart';
import 'package:get/get.dart';

class BigAlbumControllerA extends GetxController {
  var bigHeaderAlbum = <PrimaryAlbumModel>[].obs;

  @override
  void onInit() {
    fetchBigAlbum();
    super.onInit();
  }

  void fetchBigAlbum() {
    var bigAlbumItems = [
      PrimaryAlbumModel("https://cutt.ly/TbOK9CY",
          "Zara Larsson, Astrid S, Taylor Swift and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/abOLujE",
          "Astrid S, Taylor Swift, Zara Larsson and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/JbOLwtE",
          "Zara Larsson, Astrid S, Taylor Swift and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/0bOLsfv",
          "Taylor Swift, Zara Larsson, Astrid S and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/7bOLiAD",
          "Zara Larsson, Astrid S, Taylor Swift and more.", () {}),
    ];
    bigHeaderAlbum.assignAll(bigAlbumItems);
  }
}

class BigAlbumControllerB extends GetxController {
  var bigHeaderAlbum = <PrimaryAlbumModel>[].obs;

  @override
  void onInit() {
    fetchBigAlbum();
    super.onInit();
  }

  void fetchBigAlbum() {
    var bigAlbumItems = [
      PrimaryAlbumModel("https://cutt.ly/zbOX2MC",
          "The best of Coldplay, played live.", () {}),
      PrimaryAlbumModel("https://cutt.ly/PbOX6KJ",
          "The best of Led Zeppelin, played live.", () {}),
      PrimaryAlbumModel("https://cutt.ly/bbOCywR",
          "The best of BLACKPINK, played live.", () {}),
    ];
    bigHeaderAlbum.assignAll(bigAlbumItems);
  }
}

class BigAlbumControllerC extends GetxController {
  var bigHeaderAlbum = <PrimaryAlbumModel>[].obs;

  @override
  void onInit() {
    fetchBigAlbum();
    super.onInit();
  }

  void fetchBigAlbum() {
    var bigAlbumItems = [
      PrimaryAlbumModel("https://cutt.ly/lbOXxaw",
          "The Script, Coldplay, Tame Impala and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/zbOXhZR",
          "Coldplay, Tame Impala, The Script and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/wbOXpJx",
          "The Script, Coldplay, Tame Impala and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/rbOXfwn",
          "Tame Impala, The Script, Coldplay and more.", () {}),
      PrimaryAlbumModel("https://cutt.ly/TbOXsd9",
          "The Script, Coldplay, Tame Impala and more.", () {}),
    ];
    bigHeaderAlbum.assignAll(bigAlbumItems);
  }
}
