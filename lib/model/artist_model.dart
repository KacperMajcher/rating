class ArtistModel {
  ArtistModel({
    required this.place,
    required this.name,
    required this.bio,
    required this.topSongs,
  });

  final int place;
  final String name;
  final String bio;
  final List<TopSongsModel> topSongs;
}

class TopSongsModel {
  TopSongsModel({
    required this.title,
    required this.views,
  });

  final String title;
  final int views;
}