import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcaster_model.g.dart';
part 'podcaster_model.freezed.dart';

@freezed
class PodcasterModel with _$PodcasterModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PodcasterModel(
    int place,
    String name,
    String bio,
    List<TopPodcastsModel> topPodcasts,
  ) = _PodcasterModel;

  factory PodcasterModel.fromJson(Map<String, dynamic> json) =>
      _$PodcasterModelFromJson(json);
}

@freezed
class TopPodcastsModel with _$TopPodcastsModel {
  factory TopPodcastsModel(
    String title,
    int listeners,
    int coverNumber,
  ) = _TopPodcastsModel;

  factory TopPodcastsModel.fromJson(Map<String, dynamic> json) =>
      _$TopPodcastsModelFromJson(json);
}
