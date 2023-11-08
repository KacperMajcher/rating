import 'package:intl/intl.dart';

class DeadlineItem {
  DeadlineItem({
    required this.id,
    required this.task,
    required this.deadline,
    required this.isDone,
  });

  String id;
  String task;
  DateTime deadline;
  bool isDone;

  factory DeadlineItem.fromJson(Map<String, dynamic> json) {
    return DeadlineItem(
      id: json['id'],
      task: json['task'],
      deadline: json['deadline'].toDate(),
      isDone: json['is_done'],
    );
  }

  String daysLeft() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    int daysDifference = deadline.difference(date).inDays;
    return daysDifference.toString();
  }

  String deadlineDateFormatted() {
    return DateFormat.yMMMEd().format(deadline);
  }
}