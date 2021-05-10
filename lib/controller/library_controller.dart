import 'package:fake_spotify/model/album_header_model.dart';
import 'package:get/get.dart';

class MyLibraryController extends GetxController {
  var libraryDetails = <MyLibraryModel>[].obs;

  @override
  void onInit() {
    fetchMyLibrary();
    super.onInit();
  }

  void fetchMyLibrary() {
    var myLibraryItems = [
      MyLibraryModel("https://cutt.ly/5bOH1Pi", "Leave It Beautiful", "Album",
          "Astrid S", () {}),
      MyLibraryModel("https://cutt.ly/TbOK9CY", "Poster Girl", "Album",
          "Zara Larsson", () {}),
      MyLibraryModel("https://cutt.ly/zbOX2MC", "Live in Buenos Aires",
          "Compilation", "Coldplay", () {}),
      MyLibraryModel("https://cutt.ly/rbOXfwn", "The Slow Rush", "Album",
          "Tame Impala", () {}),
      MyLibraryModel("https://cutt.ly/JbOLwtE", "Uncover", "Single",
          "Zara Larsson", () {}),
      MyLibraryModel(
          "https://cutt.ly/zbOXhZR", "Mylo Xyloto", "Album", "Coldplay", () {}),
      MyLibraryModel("https://cutt.ly/lbOXxaw", "#3 (Deluxe Edition)", "Album",
          "The Script", () {}),
    ];
    libraryDetails.assignAll(myLibraryItems);
  }
}
