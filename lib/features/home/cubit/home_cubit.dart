import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.deadlineRepository}) : super(const HomeState());

  final DeadlineRepository deadlineRepository;

  Future<void> getDeadlineItems() async {
    emit(const HomeState(deadlineItem: []));
    final deadlineModel = deadlineRepository.deadlineItemsList();
    emit(
      HomeState(
        deadlineItem: deadlineModel,
      ),
    );
  }
}
