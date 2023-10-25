import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/model/artist_model.dart';

part 'artists_state.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  ArtistsCubit() : super(const ArtistsState());

 //function retrieves an artist model and emits it as a state.
  Future<void> getArtistItems() async {
    const artistModel = ArtistModel(place: 1, name: 'John Smith');
    emit(
      const ArtistsState(
        artistModel: artistModel,
      ),
    );
  }
}