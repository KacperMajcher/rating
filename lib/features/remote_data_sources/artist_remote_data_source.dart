import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rating/model/artist_model.dart';
import 'package:retrofit/http.dart';

part 'artist_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class ArtistsRemoteRetrofitDataSource {
  @factoryMethod
  factory ArtistsRemoteRetrofitDataSource(Dio dio) =
      _ArtistsRemoteRetrofitDataSource;

  @GET('/artists')
  Future<List<ArtistModel>> getArtistData();
}