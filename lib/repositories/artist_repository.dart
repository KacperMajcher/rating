import 'package:rating/model/artist_model.dart';

class ArtistRepository {
  Future<ArtistModel> getArtistItems() async {
    return const ArtistModel(place: 1, name: 'John Smith');
  }
}