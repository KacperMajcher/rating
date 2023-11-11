part of 'add_cubit.dart';

@freezed
class AddState with _$AddState {
  factory AddState({
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AddState;
}