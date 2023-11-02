import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  List<DeadlineItem> deadlineItemsList() {
    return [
      DeadlineItem(
        id: 0,
        task: 'Add ArtistModel tests',
        deadline: 7,
      ),
      DeadlineItem(
        id: 1,
        task: 'Add ArtistsRepository tests',
        deadline: 7,
      ),
      DeadlineItem(
        id: 2,
        task: 'Add ArtistRemoteDataSource tests',
        deadline: 7,
      ),
      DeadlineItem(
        id: 3,
        task: 'Add ArtistsCubit tests',
        deadline: 7,
      ),
    ];
  }
}
