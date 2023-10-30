import 'package:injectable/injectable.dart';
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/model/artist_model.dart';

@injectable
class ArtistRepository {
  ArtistRepository({required this.remoteDataSource});

  final ArtistsRemoteRetrofitDataSource remoteDataSource;

  Future<List<ArtistModel>> getArtistData() async {
    return remoteDataSource.getArtistData();
  }
}
