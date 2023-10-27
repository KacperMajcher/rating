import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 1,
        task: 'Improve artists page look',
        deadline: 1,
        isDone: true,
      ),
      DeadlineItem(
        id: 2,
        task: 'Connect artists to API server',
        deadline: 3,
      ),
    ];
  }
}
