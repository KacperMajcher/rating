import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 0,
        task: 'Fix transparent searchbox background',
        deadline: 0,
      ),
      DeadlineItem(
        id: 0,
        task: 'Implement hard-coded data of artists and podcasters to pages',
        deadline: 0,
      ),
      DeadlineItem(
        id: 0,
        task: 'Create prototype of Artists and Podcasters pages',
        deadline: 0,
      ),
      DeadlineItem(
        id: 2,
        task: 'Improve Artists and Podcasters pages look',
        deadline: 0,
      ),
      DeadlineItem(
        id: 3,
        task: 'Implement BLoC',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 4,
        task: 'Create BLoC for home',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 5,
        task: 'Implement enums in the project',
        deadline: 0,
      ),
      DeadlineItem(
        id: 6,
        task: 'Create deadline repository',
        deadline: 0,
        isDone: true,
      ),
      DeadlineItem(
        id: 7,
        task: 'Create navigator to homepage in drawer',
        deadline: 1,
      ),
      DeadlineItem(
        id: 8,
        task:
            'Create new screen by inkwell on cards in podcasters and artists pages',
        deadline: 2,
      ),
      DeadlineItem(
        id: 9,
        task:
            'Implement artist/podcaster page in that screen, show name, bio, top songs/podcasts',
        deadline: 2,
      ),
    ];
  }
}
