class DeadlineItem {
  DeadlineItem({
    required this.id,
    required this.task,
    required this.deadline,
    this.isDone = false,
  });

  int? id;
  String? task;
  int? deadline;
  bool isDone;
}
