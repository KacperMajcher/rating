import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(DeadlineRepository deadlineRepository) : super(const HomeState());

  final deadlineRepository = DeadlineRepository();

  Future<void> getDeadlineItems() async {
    emit(const HomeState(status: Status.loading));
    try {
      final deadlineModel = deadlineRepository.deadlineItemsList();
      emit(
        HomeState(
          status: Status.success,
          deadlineItem: deadlineModel,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> toggleCheckBox({required DeadlineItem deadlineItem}) async {
    emit(const HomeState(status: Status.loading));
    try {
      List<DeadlineItem> list = state.deadlineItem;
      final index = list.indexWhere((element) => element.id == deadlineItem.id);
      list.replaceRange(
        index,
        index + 1,
        [
          DeadlineItem(
              id: deadlineItem.id,
              task: deadlineItem.task,
              deadline: deadlineItem.deadline,
              isDone: !deadlineItem.isDone)
        ],
      );
      emit(
        HomeState(
          status: Status.success,
          deadlineItem: list,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  void filterItems(String enteredKeyword) async {
    emit(const HomeState(status: Status.loading));
    try {
      List<DeadlineItem> results = [];
      final list = deadlineRepository.deadlineItemsList();
      if (enteredKeyword.isEmpty) {
        results = list;
      } else {
        results = list
            .where((item) =>
                item.task!.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();
      }

      emit(HomeState(
        status: Status.success,
        deadlineItem: results,
      ));
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
