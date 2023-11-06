import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/model/artist_model.dart';

class ArtistRepository {
  ArtistRepository({required this.remoteDataSource});

  final ArtistsRemoteRetrofitDataSource remoteDataSource;

  Future<List<ArtistModel>> getArtistModel() async {
    return remoteDataSource.getArtistData();
  }
}
