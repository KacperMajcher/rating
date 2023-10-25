import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(DeadlineRepository deadlineRepository) : super(const HomeState());

  final deadlineRepository = DeadlineRepository();

  Future<void> getDeadlineItems() async {
    emit(const HomeState(deadlineItem: []));
    final deadlineModel = deadlineRepository.deadlineItemsList();
    emit(
      HomeState(
        deadlineItem: deadlineModel,
      ),
    );
  }

  Future<void> toggleCheckBox({required DeadlineItem deadlineItem}) async {
    List<DeadlineItem> list = state.deadlineItem;
    final index = list.indexWhere((element) => element.id == deadlineItem.id);
    list.replaceRange(index, index + 1, [
      DeadlineItem(
          id: deadlineItem.id,
          task: deadlineItem.task,
          deadline: deadlineItem.deadline,
          isDone: !deadlineItem.isDone)
    ]);
    emit(HomeState(deadlineItem: list));
  }

  void filterItems(String enteredKeyword) {
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

    emit(HomeState(deadlineItem: results));
  }
}
