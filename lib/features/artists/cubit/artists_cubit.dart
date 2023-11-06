import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

part 'artists_state.dart';
part 'artists_cubit.freezed.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  ArtistsCubit({required this.artistRepository}) : super( ArtistsState());
  final ArtistRepository artistRepository;

  Future<void> getArtistModels() async {
    emit( ArtistsState(artistModel: []));
    try {
      final artistModel = await artistRepository.getArtistModel();
      emit(
        ArtistsState(
          artistModel: artistModel,
        ),
      );
    } catch (error) {
      emit(
        ArtistsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}