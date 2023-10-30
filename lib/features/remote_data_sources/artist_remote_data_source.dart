import 'package:dio/dio.dart';
import 'package:rating/model/artist_model.dart';
import 'package:retrofit/http.dart';

part 'artist_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://my-json-server.typicode.com/KacperMajcher/FreeDataBaseForProjects')
abstract class ArtistsRemoteRetrofitDataSource {
  factory ArtistsRemoteRetrofitDataSource(Dio dio, {String baseUrl}) = _ArtistsRemoteRetrofitDataSource;

  @GET('/artists')
  Future<List<ArtistModel>> getArtistData();
}