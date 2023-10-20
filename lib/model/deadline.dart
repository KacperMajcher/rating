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
        id: 1,
        task: 'Add navigation drawer to home page',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 1,
        task: 'Improve drawer\'s look',
        deadline: 0,
      ),
      DeadlineItem(
        id: 2,
        task: 'Add RatingPage',
        deadline: 0,
      ),
      DeadlineItem(
        id: 3,
        task: 'Add Podcasters and Atists Page',
        deadline: 0,
      ),
      DeadlineItem(
        id: 4,
        task: 'Implement user login',
        deadline: 1,
      ),
      DeadlineItem(
        id: 4,
        task: 'Add user page',
        deadline: 1,
      ),
    ];
  }
}
