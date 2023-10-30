part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    this.deadlineItem = const [],
    this.status = Status.initial,
    this.errorMessage,
  });
  final List<DeadlineItem> deadlineItem;
  final Status status;
  final String? errorMessage;
}