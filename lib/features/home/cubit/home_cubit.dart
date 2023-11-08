import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(DeadlineRepository deadlineRepository) : super(const HomeState());

  final deadlineRepository = DeadlineRepository(DeadlineRemoteDataSource());
  final remoteDataSource = DeadlineRemoteDataSource();
  StreamSubscription? _streamSubscription;

  void getDeadlineItems() {
    emit(const HomeState(status: Status.loading));

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
      await remoteDataSource.delete(id: documentID);
    } catch (error) {
      emit(
        const HomeState(removingErrorOccured: true),
      );
    }
  }

  Future<void> toggleCheckBox({required DeadlineItem deadlineItem}) async {
    try {
      await deadlineRepository.updateIsDone(deadlineItem.id);
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
