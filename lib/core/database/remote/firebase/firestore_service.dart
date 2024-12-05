import 'package:active_sol_app/core/database/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService implements DatabaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> create(String collection, Map<String, dynamic> data) async {
    await firestore.collection(collection).add(data);
  }
@override
  Future<Map<String, dynamic>?> read(String collection, String id) async {
    final docSnapshot = await firestore.collection(collection).doc(id).get();
    return docSnapshot.exists ? docSnapshot.data() : null;
  }
  @override
  Future<void> update(String collection, String id, Map<String, dynamic> data) async {
    await firestore.collection(collection).doc(id).update(data);
  } 
  @override
  Future<void> delete(String collection, String id) async {
    await firestore.collection(collection).doc(id).delete();
  }

  @override
  Future<List<Map<String, dynamic>>> query(String collection, {Map<String, dynamic>? filters}) async {
    Query query = firestore.collection(collection);
    if (filters != null && filters.isNotEmpty) {
      filters.forEach((key, value) {
        query = query.where(key, isEqualTo: value);
      });
    }
    final querySnapshot = await query.get();
    return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }

  

   
}