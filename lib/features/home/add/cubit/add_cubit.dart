import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/repositories/deadline_repository.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this.deadlineRepository) : super(const AddState());

  final DeadlineRepository deadlineRepository;

  void add(
    String task,
    bool isDone,
    DateTime deadline,
  ) async {
    try {
      await deadlineRepository.add(task, isDone, deadline);
      emit(const AddState(saved: true));
    } catch (error) {
      emit(
        AddState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}