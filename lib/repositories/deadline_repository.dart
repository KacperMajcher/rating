import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 0,
        task: 'Connect artists to API server',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 1,
        task: 'Add Json Serailizable',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 2,
        task: 'Implement freezed to the project',
        deadline: 1,
        isDone: true,
      ),
      DeadlineItem(
        id: 3,
        task: 'Implement retrofit to the project',
        deadline: 1,
        isDone: true,
      ),
      DeadlineItem(
        id: 4,
        task: 'Add get_it to the project',
        deadline: 2,
        isDone: true,
      ),
      DeadlineItem(
        id: 5,
        task: 'Add  injectable to the project',
        deadline: 2,
        isDone: true,
      ),
      DeadlineItem(
        id: 6,
        task: 'Add field rename to clear JsonKey\'s from code',
        deadline: 3,
        isDone: true,
      ),
      DeadlineItem(
        id: 7,
        task: 'Implement auto registering for injectable',
        deadline: 3,
        isDone: true,
      ),
    ];
  }
}
