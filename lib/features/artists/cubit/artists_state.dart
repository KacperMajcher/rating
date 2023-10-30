part of 'artists_cubit.dart';

@freezed
class ArtistsState with _$ArtistsState {
  factory ArtistsState(
      {@Default([]) List<ArtistModel> artistModel,
      @Default([]) List<TopSongsModel> topSongsModel,
      @Default(Status.initial) Status status,
      String? errorMessage}) = _ArtistsState;
}