import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 0,
        task: 'Create new screen naviated by inkwell on cards in artist page',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 1,
        task:
            'Implement prototype of artist page in that screen, show name, bio, top songs',
        deadline: 0,
      ),
      DeadlineItem(
        id: 2,
        task:
            'Create a suffix optimizing the display of "day(s) left" in the deadlineItemWidget',
        deadline: 0,
      ),
    ];
  }
}
