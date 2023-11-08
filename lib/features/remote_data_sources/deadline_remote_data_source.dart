import 'package:cloud_firestore/cloud_firestore.dart';

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

  Future<void> updateIsDone(String itemId) async {
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

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('items').doc(id).delete();
  }
}