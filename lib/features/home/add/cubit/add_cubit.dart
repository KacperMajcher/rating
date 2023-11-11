import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'add_state.dart';
part 'add_cubit.freezed.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit({required this.deadlineRepository}) : super(AddState());

  final DeadlineRepository deadlineRepository;

  Future<void> add(
    String task,
    bool isDone,
    DateTime deadline,
  ) async {
    try {
      await deadlineRepository.add(task, isDone, deadline);
      emit(
        AddState(
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        AddState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}