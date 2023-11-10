import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/model/podcaster_model.dart';
import 'package:rating/repositories/podcaster_repository.dart';

part 'podcasters_state.dart';
part 'podcasters_cubit.freezed.dart';

class PodcastersCubit extends Cubit<PodcastersState> {
  PodcastersCubit({required this.podcasterRepository}) : super( PodcastersState());
  final PodcasterRepository podcasterRepository;

  Future<void> getPodcasterModels() async {
    emit(
      PodcastersState(
        status: Status.loading,
        podcasterModel: [],
      ),
    );
    try {
      final podcasterModel = await podcasterRepository.getPodcasterModel();
      emit(
        PodcastersState(
          podcasterModel: podcasterModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        PodcastersState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}