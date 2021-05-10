import 'package:flutter/material.dart';

// Albums & Genres
class PrimaryAlbumModel {
  final String imageURL;
  final String albumDesc;
  final Function()? onItemTap;

  PrimaryAlbumModel(this.imageURL, this.albumDesc, this.onItemTap);
}

class SecondAlbumModel {
  final String imageURL;
  final String albumTitle;
  final Function()? onItemTap;

  SecondAlbumModel(this.imageURL, this.albumTitle, this.onItemTap);
}

class GenreTypesModel {
  final String imageURL;
  final String genreTitle;
  final Color? genreColor;
  final Function()? onItemTap;

  GenreTypesModel(
      this.imageURL, this.genreTitle, this.genreColor, this.onItemTap);
}

class MyLibraryModel {
  final String imageURL;
  final String libraryTitle;
  final String libraryType;
  final String libraryUser;
  final Function()? onItemTap;

  MyLibraryModel(this.imageURL, this.libraryTitle, this.libraryType, this.libraryUser, this.onItemTap);
}

// Headers
class PrimaryHeaderModel {
  final String headerTitle;
  final IconData iconData1;
  final IconData iconData2;
  final Function()? onItemPressed1;
  final Function()? onItemPressed2;

  PrimaryHeaderModel(this.headerTitle, this.iconData1, this.iconData2,
      this.onItemPressed1, this.onItemPressed2);
}

class AvatarHeaderModel {
  final String imageURL;
  final String headerTitle;
  final String headerDesc;

  AvatarHeaderModel(this.imageURL, this.headerTitle, this.headerDesc);
}

class SmallPlayerModel {
  final String imageURL;
  final String playerTrack;
  final String playerArtist;
  final IconData iconData1;
  final Color iconData1Color;
  final IconData iconData2;
  final Function()? onItemTap;

  SmallPlayerModel(this.imageURL, this.playerTrack, this.playerArtist,
      this.iconData1, this.iconData1Color, this.iconData2, this.onItemTap);
}
// class PlainHeaderModel {
//   final String headerText;

//   PlainHeaderModel(this.headerText);
// }

// Texts
class LyricsInfo {
  final String lyrics;

  LyricsInfo(this.lyrics);
}