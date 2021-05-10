import 'package:fake_spotify/model/album_header_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenreControllerA extends GetxController {
  var genreTypes = <GenreTypesModel>[].obs;

  @override
  void onInit() {
    fetchGenreTypes();
    super.onInit();
  }

  void fetchGenreTypes() {
    var genreItems = [
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Rock", Colors.red, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Pop", Colors.purple, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Indie", Colors.green, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Dance/Elektronik", Colors.pink, () {}),
    ];
    genreTypes.assignAll(genreItems);
  }
}

class GenreControllerB extends GetxController {
  var genreTypes = <GenreTypesModel>[].obs;

  @override
  void onInit() {
    fetchGenreTypes();
    super.onInit();
  }

  void fetchGenreTypes() {
    var genreItems = [
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Podcasts", Colors.deepPurple, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Made For You", Colors.lightGreen, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Charts", Colors.lime, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "New Releases", Colors.cyan, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Discover", Colors.blue, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Concerts", Colors.orange, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "EQUAL", Colors.indigo, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Ramadan", Colors.teal, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Musik Indonesia", Colors.brown, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "RADAR", Colors.amber, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "K-Pop", Colors.deepOrange, () {}),
      GenreTypesModel("https://cutt.ly/5bOH1Pi", "Higher Ground", Colors.blueGrey, () {}),
    ];
    genreTypes.assignAll(genreItems);
  }
}