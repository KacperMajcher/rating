import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      
      DeadlineItem(
        id: 1,
        task: 'Connect artists to API server',
        deadline: 1,
        isDone: true,
      ),
    ];
  }
}
