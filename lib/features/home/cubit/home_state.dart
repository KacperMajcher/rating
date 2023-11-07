part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    this.deadlineItem = const [],
    this.status = Status.initial,
    this.errorMessage,
    this.removingErrorOccured = false,
  });
  final List<DeadlineItem> deadlineItem;
  final Status status;
  final String? errorMessage;
  final bool removingErrorOccured;
}