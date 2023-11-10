import 'package:rating/features/remote_data_sources/podcaster_remote_data_source.dart';
import 'package:rating/model/podcaster_model.dart';

class PodcasterRepository {
  PodcasterRepository({required this.remoteDataSource});

  final PodcastersRemoteRetrofitDataSource remoteDataSource;

  Future<List<PodcasterModel>> getPodcasterModel() async {
    return remoteDataSource.getPodcasterData();
  }
}