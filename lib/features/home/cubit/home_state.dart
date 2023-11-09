part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<DeadlineItem> deadlineItem,
    @Default(Status.initial) Status status,
    @Default(false) bool removingErrorOccured,
    String? errorMessage,
  }) = _HomeState;
}