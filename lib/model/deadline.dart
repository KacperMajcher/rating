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

  static List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(id: 1, task: 'Add firebase to the project', deadline: 0),
      DeadlineItem(id: 2, task: 'Add Searchbox functionality', deadline: 0),
    ];
  }
}
