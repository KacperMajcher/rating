import 'package:json_annotation/json_annotation.dart';

part 'artist_model.g.dart';

@JsonSerializable()
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
  @JsonKey(name: 'top_songs')
  final List<TopSongsModel> topSongs;

  factory ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistModelToJson(this);
}

@JsonSerializable()
class TopSongsModel {
  TopSongsModel({
    required this.title,
    required this.views,
  });

  final String title;
  final int views;

  factory TopSongsModel.fromJson(Map<String, dynamic> json) =>
      _$TopSongsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopSongsModelToJson(this);
}