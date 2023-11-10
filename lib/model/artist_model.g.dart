// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistModelImpl _$$ArtistModelImplFromJson(Map<String, dynamic> json) =>
    _$ArtistModelImpl(
      json['place'] as int,
      json['name'] as String,
      json['bio'] as String,
      (json['top_songs'] as List<dynamic>)
          .map((e) => TopSongsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistModelImplToJson(_$ArtistModelImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'name': instance.name,
      'bio': instance.bio,
      'top_songs': instance.topSongs,
    };

_$TopSongsModelImpl _$$TopSongsModelImplFromJson(Map<String, dynamic> json) =>
    _$TopSongsModelImpl(
      json['title'] as String,
      json['views'] as int,
      json['coverNumber'] as int,
    );

Map<String, dynamic> _$$TopSongsModelImplToJson(_$TopSongsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'views': instance.views,
      'coverNumber': instance.coverNumber,
    };
