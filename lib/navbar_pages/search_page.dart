import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBarWithSearch(),
      ),
      body: ListView(
        children: [
          SearchTitleText(titleText: "Genre teratas kamu"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Rock",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.red,
                    ),
                    AlbumContainer3(
                      genreText: "Pop",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.purple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Indie",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.green,
                    ),
                    AlbumContainer3(
                      genreText: "Dance/Elektronik",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.pink,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SearchTitleText(titleText: "Browse semua"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Podcast",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.teal,
                    ),
                    AlbumContainer3(
                      genreText: "Dibuat Untuk Kamu",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Di Rumah",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.deepPurple,
                    ),
                    AlbumContainer3(
                      genreText: "Konser",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.blueGrey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Higher Ground",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.brown,
                    ),
                    AlbumContainer3(
                      genreText: "Anime",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.deepOrange,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AlbumContainer3(
                      genreText: "Musik Brasil",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.green,
                    ),
                    AlbumContainer3(
                      genreText: "Musik Arab",
                      imageURL: "https://cutt.ly/Zbl3HV1",
                      colorData: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumContainer3 extends StatelessWidget {
  final String genreText;
  final String imageURL;
  final Color colorData;
  const AlbumContainer3({
    Key? key,
    required this.genreText,
    required this.imageURL,
    required this.colorData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(top: 10, left: 10),
        height: 80,
        decoration: BoxDecoration(
          color: colorData,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      genreText,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            RotationTransition(
                turns: AlwaysStoppedAnimation(25 / 360),
                child: Image.network(imageURL, width: 55)),
          ],
        ),
      ),
    );
  }
}

class SearchTitleText extends StatelessWidget {
  final String titleText;
  const SearchTitleText({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Text(
        titleText,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class AppBarWithSearch extends StatelessWidget {
  const AppBarWithSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryBlack,
      elevation: 0,
      title: Text(
        "Cari",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                color: primaryBlack,
              ),
              SizedBox(width: 10),
              Text(
                "Artis, lagu, atau podcast",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
