import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/model/artist_model.dart';

class ArtistRepository {
  ArtistRepository({required this.remoteDataSource});

  final ArtistsRemoteDioDataSource remoteDataSource;

  Future<List<ArtistModel>> getArtistData() async {
    final json = await remoteDataSource.getArtistData();
    if (json == null) {
      return [];
    }
    return json.map((item) => ArtistModel.fromJson(item)).toList();
  }
}