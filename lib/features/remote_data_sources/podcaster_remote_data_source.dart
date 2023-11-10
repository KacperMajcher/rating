import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rating/model/podcaster_model.dart';
import 'package:retrofit/http.dart';

part 'podcaster_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class PodcastersRemoteRetrofitDataSource {
  @factoryMethod
  factory PodcastersRemoteRetrofitDataSource(Dio dio) =
      _PodcastersRemoteRetrofitDataSource;

  @GET('/podcasters')
  Future<List<PodcasterModel>> getPodcasterData();
}
