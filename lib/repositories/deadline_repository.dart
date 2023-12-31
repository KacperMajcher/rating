import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart';
import 'package:rating/model/deadline_model.dart';

class DeadlineRepository {
  DeadlineRepository({required this.remoteDataSource});
  final DeadlineRemoteDataSource remoteDataSource;

  Stream<List<DeadlineItem>> getDeadline() {
    return remoteDataSource.getDeadlineData().map((items) {
      return items.map((doc) => DeadlineItem.fromJson(doc)).toList();
    });
  }

  Future<void> add(String task, bool isDone, DateTime deadline) async {
    await remoteDataSource.addDeadline(task, isDone, deadline);
  }

  Future<void> setAsDone(String id) async {
    await remoteDataSource.setAsDone(id);
  }

  Future<List<DeadlineItem>> filterItems() async {
    final results = await remoteDataSource.filterItems();
    return results.map((items) {
      return DeadlineItem.fromJson(items);
    }).toList();
  }

  Future<void> remove(String id) async {
    await remoteDataSource.delete(id: id);
  }
}
