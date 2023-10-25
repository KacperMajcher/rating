import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 4,
        task: 'Implement enums in the project',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 5,
        task: 'Fix transparent searchbox background',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 6,
        task: 'Implement hard-coded data of artists to artistpage',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 7,
        task: 'Create prototype of Artists page',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 8,
        task: 'Improve Artists page look',
        deadline: -1,
        isDone: true,
      ),
      DeadlineItem(
        id: 9,
        task: 'Create navigator to homepage in drawer',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 10,
        task: 'Create new screen by inkwell on cards in artist page',
        deadline: 1,
      ),
      DeadlineItem(
        id: 11,
        task: 'Implement artist page in that screen, show name, bio, top songs',
        deadline: 1,
      ),
    ];
  }
}
