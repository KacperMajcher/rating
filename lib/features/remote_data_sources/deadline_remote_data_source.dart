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

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('items').doc(id).delete();
  }
}