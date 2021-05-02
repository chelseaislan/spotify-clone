import 'package:fake_spotify/misc/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [primaryPurple, primaryBlack],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.001, 0.3]),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                HeaderWithButtons(
                  avatar: Text(""),
                  headerText: "Selamat sore",
                  iconData1: Icons.rotate_left_rounded,
                  iconData2: Icons.settings_outlined,
                  onItemPressed1: () {},
                  onItemPressed2: () {},
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          AlbumContainer1(
                            imageURL: "https://cutt.ly/Qbl2GVd",
                            albumTitle: "Everyday Life",
                          ),
                          AlbumContainer1(
                            imageURL: "https://cutt.ly/Tbl9WEM",
                            albumTitle: "Leave It Beautiful",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AlbumContainer1(
                            imageURL: "https://cutt.ly/Nbl9XgS",
                            albumTitle: "Hurry Up, We're Dreaming",
                          ),
                          AlbumContainer1(
                            imageURL: "https://cutt.ly/6bl9MBk",
                            albumTitle: "Sempiternal",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                HeaderWithAvatar(
                  imageURL: "https://cutt.ly/Zbl3HV1",
                  artistTitle: "Astrid S",
                ),
                SizedBox(
                  height: 200,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/Abl8kvQ",
                          descText:
                              "The 1975, Astrid S, Lana Del Rey, Tame Impala and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/Pbl4eed",
                          descText:
                              "Astrid S, Zara Larsson, Coldplay, Taylor Swift and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/kbl4iug",
                          descText:
                              "Lewis Capaldi, Astrid S, The Script, Coldplay and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/1bl4duh",
                          descText:
                              "Coldplay, Astrid S, Lana Del Rey, Avril Lavigne and more",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                HeaderWithoutAnything(headerText: "Live music anywhere!"),
                SizedBox(
                  height: 200,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/8bl4HAW",
                          descText:
                              "Coldplay, The 1975, Astrid S, Lana Del Rey, Tame Impala and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/ubl4LlY",
                          descText:
                              "Nirvana, The Police, Lynyrd Skynyrd, Phil Collins and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/Tbl4Xgn",
                          descText:
                              "Mariah Carey, Celine Dion, Elton John, Westlife and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/Lbl4MLd",
                          descText:
                              "Avenged Sevenfold, Coldplay, Bring Me the Horizon, Asking Alexandria and more",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                HeaderWithAvatar(
                  imageURL: "https://cutt.ly/Kbl7o8q",
                  artistTitle: "Rick Astley",
                ),
                SizedBox(
                  height: 200,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/Lbl7hId",
                          descText:
                              "Rick Astley, Toto, John Denver, Earth, Wind & Fire and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/nbl7lXI",
                          descText:
                              "Tears for Fears, Phil Collins, Wham!, Queen and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/7bl7vWZ",
                          descText:
                              "Rod Stewart, Bryan Adams, Richard Marx, The Police and more",
                        ),
                        AlbumContainer2(
                          imageURL: "https://cutt.ly/ybl7QUG",
                          descText:
                              "Madonna, Britney Spears, Mariah Carey, Whitney Houston and more",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithoutAnything extends StatelessWidget {
  final String headerText;
  const HeaderWithoutAnything({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 20),
      alignment: Alignment.centerLeft,
      child: Text(
        headerText,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class AlbumContainer2 extends StatelessWidget {
  final String imageURL;
  final String descText;
  const AlbumContainer2({
    Key? key,
    required this.imageURL,
    required this.descText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 140,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageURL,
            width: 140,
          ),
          SizedBox(height: 10),
          Flexible(
            child: Container(
              child: Text(
                descText,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: grey4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithAvatar extends StatelessWidget {
  final String imageURL;
  final String artistTitle;
  const HeaderWithAvatar({
    Key? key,
    required this.imageURL,
    required this.artistTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageURL),
            radius: 25,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LAINNYA SEPERTI",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: grey4,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                artistTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AlbumContainer1 extends StatelessWidget {
  final String imageURL;
  final String albumTitle;
  const AlbumContainer1({
    Key? key,
    required this.imageURL,
    required this.albumTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: grey5,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(
                    5,
                  )),
              child: Image.network(
                imageURL,
                width: 50,
              ),
            ),
            SizedBox(width: 8),
            Flexible(
              child: Container(
                child: Text(
                  albumTitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWithButtons extends StatelessWidget {
  final Widget avatar;
  final String headerText;
  final IconData iconData1;
  final IconData iconData2;
  final Function()? onItemPressed1;
  final Function()? onItemPressed2;
  const HeaderWithButtons({
    Key? key,
    required this.headerText,
    required this.iconData1,
    required this.iconData2,
    required this.onItemPressed1,
    required this.onItemPressed2,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              avatar,
              SizedBox(width: 10),
              Text(
                headerText,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onItemPressed1,
                icon: Icon(iconData1, size: 25),
              ),
              IconButton(
                onPressed: onItemPressed2,
                icon: Icon(iconData2, size: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
