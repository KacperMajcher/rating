part of 'artists_cubit.dart';

class ArtistsState {
  const ArtistsState({
    this.artistModel = const [],
    this.topSongsModel = const [],
    this.status = Status.initial,
    this.errorMessage,
  });
  final List<ArtistModel> artistModel;
  final List<TopSongsModel> topSongsModel;
   final Status status;
  final String? errorMessage;
}