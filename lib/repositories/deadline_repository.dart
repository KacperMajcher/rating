import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 1,
        task:
            'Implement prototype of artist page in that screen; show name, bio, top songs',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 2,
        task:
            'Create a suffix optimizing the display of "day(s) left" in the deadlineItemWidget',
        deadline: -1,
      ),
    ];
  }
}
