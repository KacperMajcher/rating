import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

part 'artists_state.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  ArtistsCubit(this._artistRepository) : super(const ArtistsState());

  final ArtistRepository _artistRepository;

  Future<void> getArtistModel() async {
   
    emit(const ArtistsState());
    final artistModel = await _artistRepository.getArtistItems();
    emit(
      ArtistsState(
        artistModel: artistModel,
      ),
    );
  }
}