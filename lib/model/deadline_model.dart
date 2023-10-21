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
      DeadlineItem(
        id: 4,
        task: 'Implement user login',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 4,
        task: 'Add user page',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 4,
        task: 'Implement Artists and Podcasters pages',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 4,
        task: 'Improve Artists and Podcasters pages look',
        deadline: 1,
      ),
    ];
  }
}
