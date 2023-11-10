// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcaster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcasterModelImpl _$$PodcasterModelImplFromJson(Map<String, dynamic> json) =>
    _$PodcasterModelImpl(
      json['place'] as int,
      json['name'] as String,
      json['bio'] as String,
      (json['top_podcasts'] as List<dynamic>)
          .map((e) => TopPodcastsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PodcasterModelImplToJson(
        _$PodcasterModelImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'name': instance.name,
      'bio': instance.bio,
      'top_podcasts': instance.topPodcasts,
    };

_$TopPodcastsModelImpl _$$TopPodcastsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPodcastsModelImpl(
      json['title'] as String,
      json['listeners'] as int,
      json['coverNumber'] as int,
    );

Map<String, dynamic> _$$TopPodcastsModelImplToJson(
        _$TopPodcastsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'listeners': instance.listeners,
      'coverNumber': instance.coverNumber,
    };
