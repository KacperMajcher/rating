import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rating/features/artists/cubit/artists_cubit.dart';
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/repositories/artist_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  //Bloc (cubit)
  getIt.registerFactory(() => ArtistsCubit(artistRepository: getIt()));

  //Repository
  getIt.registerFactory(() => ArtistRepository(remoteDataSource: getIt()));

  //DataSource
  getIt.registerFactory(() => ArtistsRemoteRetrofitDataSource(Dio()));
}