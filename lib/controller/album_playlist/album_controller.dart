import 'package:fake_spotify/model/queue_model.dart';
import 'package:get/get.dart';

class AlbumControllerLIB extends GetxController {
  var trackLists = <QueueInfo>[].obs;

  @override
  void onInit() {
    fetchTrackLists();
    super.onInit();
  }

  void fetchTrackLists() {
    var trackListItems = [
      QueueInfo("Hurts So Good", "Astrid S", true, false),
      QueueInfo("Think Before I Talk", "Astrid S", true, false),
      QueueInfo("Emotion", "Astrid S", true, true),
      QueueInfo("Leave It Beautiful", "Astrid S", true, false),
      QueueInfo("I Don't Know Why", "NOTD, Astrid S", true, false),
      QueueInfo("It's Ok If You Forget Me", "Astrid S", true, false),
      QueueInfo("Marilyn Monroe", "Astrid S", true, false),
      QueueInfo("Airpods", "Astrid S", true, false),
      QueueInfo("Good Choices", "Astrid S", true, false),
      QueueInfo("Obsessed", "Astrid S", true, false),
      QueueInfo("If I Can't Have You", "Astrid S", true, false),
    ];
    trackLists.assignAll(trackListItems);
  }
}
