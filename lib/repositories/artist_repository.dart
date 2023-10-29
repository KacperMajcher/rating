import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/model/artist_model.dart';

class ArtistRepository {
  ArtistRepository({required this.remoteDataSource});

  final ArtistsMockedDataSource remoteDataSource;

  Future<List<ArtistModel>> getArtistModels() async {
    final json = await remoteDataSource.getArtists();
    if (json == null) {
      return [];
    }
    return json.map((item) => ArtistModel.fromJson(item)).toList();
  }
}