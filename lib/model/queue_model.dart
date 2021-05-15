class QueueInfo {
  final String songTitle;
  final String songArtist;
  final bool isDownloaded;
  final bool isExplicit;

  QueueInfo(
      this.songTitle, this.songArtist, this.isDownloaded, this.isExplicit);
}

class PopularSongsInfo {
  final int songsRank;
  final String imageURL;
  final String songTitle;
  final String playAmount;

  PopularSongsInfo(
      this.songsRank, this.imageURL, this.songTitle, this.playAmount);
}

class NowPlayingInfo {
  final String imageURL;
  final String playerTrack;
  final String playerArtist;

  NowPlayingInfo(this.imageURL, this.playerTrack, this.playerArtist);
}
