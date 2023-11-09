import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeadlineRemoteDataSource {
  Stream<List<Map<String, dynamic>>> getDeadlineData() {
    final query = FirebaseFirestore.instance
        .collection('items')
        .orderBy('deadline')
        .snapshots();

    return query.map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        data['id'] = doc.id;
        data['deadline'] = (data['deadline'] as Timestamp).toDate();
        return data;
      }).toList();
    });
  }

Future<void> addDeadline(
    String task,
    bool isDone,
    DateTime deadline,
  ) async {
    await FirebaseFirestore.instance.collection('items').add(
      {
        'task': task,
        'is_done': isDone,
        'deadline': deadline,
      },
    );
  }

  Future<void> setAsDone(String itemId) async {
    final query =
        await FirebaseFirestore.instance.collection('items').doc(itemId).get();

    if (query.exists) {
      final isDoneField = query.data()!['is_done'] as bool;

      await FirebaseFirestore.instance
          .collection('items')
          .doc(itemId)
          .update({'is_done': !isDoneField});
    } else {
      throw (Exception('Unknown error'));
    }
  }

  Future<List<Map<String, dynamic>>> filterItems() async {
    final query = await FirebaseFirestore.instance
        .collection('items')
        .orderBy('deadline')
        .get();

    return query.docs.map((doc) {
      final data = doc.data();
      data['id'] = doc.id;
      data['deadline'] = (data['deadline'] as Timestamp).toDate();
      return data;
    }).toList();
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('items').doc(id).delete();
  }
}