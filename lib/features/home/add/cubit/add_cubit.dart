import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(const AddState());

  Future<void> add(
    String task,
    bool isDone,
    DateTime deadline,
  ) async {
    try {
      await FirebaseFirestore.instance.collection('items').add(
        {
          'task': task,
          'is_done': isDone = false,
          'deadline': deadline,
        },
      );
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