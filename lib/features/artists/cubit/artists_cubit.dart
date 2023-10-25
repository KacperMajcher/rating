import 'package:flutter_bloc/flutter_bloc.dart';

part 'artists_state.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  ArtistsCubit() : super(ArtistsState());
}