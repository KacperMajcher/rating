// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rating/app/injection_container.dart' as _i14;
import 'package:rating/features/artists/cubit/artists_cubit.dart' as _i13;
import 'package:rating/features/home/add/cubit/add_cubit.dart' as _i6;
import 'package:rating/features/home/cubit/home_cubit.dart' as _i5;
import 'package:rating/features/podcasters/cubit/podcasters_cubit.dart' as _i11;
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart'
    as _i9;
import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart'
    as _i3;
import 'package:rating/features/remote_data_sources/podcaster_remote_data_source.dart'
    as _i8;
import 'package:rating/repositories/artist_repository.dart' as _i12;
import 'package:rating/repositories/deadline_repository.dart' as _i4;
import 'package:rating/repositories/podcaster_repository.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.DeadlineRemoteDataSource>(
        () => _i3.DeadlineRemoteDataSource());
    gh.factory<_i4.DeadlineRepository>(
        () => _i4.DeadlineRepository(gh<_i3.DeadlineRemoteDataSource>()));
    gh.factory<_i5.HomeCubit>(
        () => _i5.HomeCubit(gh<_i4.DeadlineRepository>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i6.AddCubit>(() => _i6.AddCubit(gh<_i4.DeadlineRepository>()));
    gh.lazySingleton<_i7.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i8.PodcastersRemoteRetrofitDataSource>(
        () => _i8.PodcastersRemoteRetrofitDataSource(gh<_i7.Dio>()));
    gh.factory<_i9.ArtistsRemoteRetrofitDataSource>(
        () => _i9.ArtistsRemoteRetrofitDataSource(gh<_i7.Dio>()));
    gh.factory<_i10.PodcasterRepository>(() => _i10.PodcasterRepository(
        remoteDataSource: gh<_i8.PodcastersRemoteRetrofitDataSource>()));
    gh.factory<_i11.PodcastersCubit>(() => _i11.PodcastersCubit(
        podcasterRepository: gh<_i10.PodcasterRepository>()));
    gh.factory<_i12.ArtistRepository>(() => _i12.ArtistRepository(
        remoteDataSource: gh<_i9.ArtistsRemoteRetrofitDataSource>()));
    gh.factory<_i13.ArtistsCubit>(
        () => _i13.ArtistsCubit(artistRepository: gh<_i12.ArtistRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
