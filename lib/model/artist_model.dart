import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.g.dart';
part 'artist_model.freezed.dart';

@freezed
class ArtistModel with _$ArtistModel {
  factory ArtistModel(
    int place,
    String name,
    String bio,
    @JsonKey(name: 'top_songs') List<TopSongsModel> topSongs,
  ) = _ArtistModel;

  factory ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelFromJson(json);
}

@freezed
class TopSongsModel with _$TopSongsModel {
  factory TopSongsModel(
    String title,
    int views,
  ) = _TopSongsModel;

  factory TopSongsModel.fromJson(Map<String, dynamic> json) =>
      _$TopSongsModelFromJson(json);
}