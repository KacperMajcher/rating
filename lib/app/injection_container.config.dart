// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rating/app/injection_container.dart' as _i9;
import 'package:rating/features/artists/cubit/artists_cubit.dart' as _i8;
import 'package:rating/features/home/cubit/home_cubit.dart' as _i4;
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart'
    as _i6;
import 'package:rating/repositories/artist_repository.dart' as _i7;
import 'package:rating/repositories/deadline_repository.dart' as _i3;

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
    gh.factory<_i3.DeadlineRepository>(() => _i3.DeadlineRepository());
    gh.factory<_i4.HomeCubit>(
        () => _i4.HomeCubit(gh<_i3.DeadlineRepository>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i5.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i6.ArtistsRemoteRetrofitDataSource>(
        () => _i6.ArtistsRemoteRetrofitDataSource(gh<_i5.Dio>()));
    gh.factory<_i7.ArtistRepository>(() => _i7.ArtistRepository(
        remoteDataSource: gh<_i6.ArtistsRemoteRetrofitDataSource>()));
    gh.factory<_i8.ArtistsCubit>(
        () => _i8.ArtistsCubit(artistRepository: gh<_i7.ArtistRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
