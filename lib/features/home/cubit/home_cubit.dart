import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.deadlineRepository}) : super(HomeState());

  final DeadlineRepository deadlineRepository;
  StreamSubscription? _streamSubscription;

  void getDeadlineItems() {
    emit(HomeState(status: Status.loading));

    _streamSubscription = deadlineRepository.getDeadline().listen(
      (deadlineItems) {
        emit(
          HomeState(
            status: Status.success,
            deadlineItem: deadlineItems,
          ),
        );
      },
      onError: (error) {
        emit(
          HomeState(
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await deadlineRepository.remove(documentID);
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
    try {
      await deadlineRepository.setAsDone(deadlineItem.id);
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> filterItems(String enteredKeyword) async {
    final allItems = await deadlineRepository.filterItems();
    List<DeadlineItem> filteredItems = [];

    if (enteredKeyword.isEmpty) {
      filteredItems = allItems;
    } else {
      filteredItems = allItems
          .where((item) =>
              item.task.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    emit(HomeState(
      status: Status.success,
      deadlineItem: filteredItems,
    ));
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
