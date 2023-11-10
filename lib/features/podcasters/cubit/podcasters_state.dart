part of 'podcasters_cubit.dart';

@freezed
class PodcastersState with _$PodcastersState {
  factory PodcastersState(
      {@Default([]) List<PodcasterModel> podcasterModel,
      @Default([]) List<TopPodcastsModel> topPodcastsModel,
      @Default(Status.initial) Status status,
      String? errorMessage}) = _PodcastersState;
}