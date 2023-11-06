import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart';
import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  DeadlineRepository(this.remoteDataSource);
  final DeadlineRemoteDataSource remoteDataSource;

  Stream<List<DeadlineItem>> getDeadline() {
    return remoteDataSource.getDeadlineData().map((items) {
      return items.map((doc) => DeadlineItem.fromJson(doc)).toList();
    });
  }
}
