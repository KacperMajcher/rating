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

  ArtistModel.fromJson(Map<String, dynamic> json)
      : place = json['place'],
        name = json['name'],
        bio = json['bio'],
        topSongs = (json['top_songs'] as List)
            .map((songData) => TopSongsModel.fromJson(songData))
            .toList();
}

class TopSongsModel {
  TopSongsModel({
    required this.title,
    required this.views,
  });

  final String title;
  final int views;

  TopSongsModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        views = json['views'];
}