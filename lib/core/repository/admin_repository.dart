import 'dart:developer';

import 'package:active_sol_app/users/administration/admin/model/admin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AdminRepository {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static Future<List<Admin>> getAllAdmins() async {
    List<Admin> admins = [];
    await _firestore.collection('admins').get().then((querySnapshot) {
      for (var doc in querySnapshot.docs) {
        log('########################################');
        log(doc.id);
        log(doc.data().toString());
        log('########################################');
        admins.add(Admin.fromJson(doc.data()));
      }
    });
    return admins;
  }
}
