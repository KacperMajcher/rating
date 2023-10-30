// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistModel _$ArtistModelFromJson(Map<String, dynamic> json) => ArtistModel(
      place: json['place'] as int,
      name: json['name'] as String,
      bio: json['bio'] as String,
      topSongs: (json['top_songs'] as List<dynamic>)
          .map((e) => TopSongsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistModelToJson(ArtistModel instance) =>
    <String, dynamic>{
      'place': instance.place,
      'name': instance.name,
      'bio': instance.bio,
      'top_songs': instance.topSongs,
    };

TopSongsModel _$TopSongsModelFromJson(Map<String, dynamic> json) =>
    TopSongsModel(
      title: json['title'] as String,
      views: json['views'] as int,
    );

Map<String, dynamic> _$TopSongsModelToJson(TopSongsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'views': instance.views,
    };
