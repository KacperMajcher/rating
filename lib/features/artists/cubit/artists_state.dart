part of 'artists_cubit.dart';

class ArtistsState {
  const ArtistsState({
    this.artistModel = const [],
    this.topSongsModel = const [],
  });
  final List<ArtistModel> artistModel;
  final List<TopSongsModel> topSongsModel;
}