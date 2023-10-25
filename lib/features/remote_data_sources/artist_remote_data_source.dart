import 'package:rating/model/artist_model.dart';

class ArtistsMockedDataSource {
  Future<List<ArtistModel>> getArtists() async {
    return [
      const ArtistModel(place: 1, name: 'James Smith'),
      const ArtistModel(place: 2, name: 'Sarah Johnson'),
      const ArtistModel(place: 3, name: 'David Wilson'),
      const ArtistModel(place: 4, name: 'Emily Brown'),
      const ArtistModel(place: 5, name: 'John Taylor'),
    ];
  }
}