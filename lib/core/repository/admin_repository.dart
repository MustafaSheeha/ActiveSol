import 'dart:developer';

import 'package:active_sol_app/core/database/remote/firebase/firestore_service.dart';
import 'package:active_sol_app/users/administration/admin/model/admin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AdminRepository {
  static final FirestoreService _firestoreService = FirestoreService();

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static Future<void> addAdmin(Admin admin) async {
    try {
      // get last Id
      int updatedId = await FirestoreService().getlastId('admin') + 1;
      // Step 1: Generate a unique ID for the admin
      admin.id = await admin.generateId('admin');

      // Step 2: Prepare the admin data for saving
      final adminData = admin.toJson();

      // Step 3: Save the admin data in the Firebase database
      await _firestoreService.create('admins', adminData);
      await _firestoreService.updatelastId('admin', updatedId);

      print('Admin added successfully with ID: ${admin.id}');
    } catch (e) {
      print('Error adding admin: $e');
      throw Exception('Failed to add admin: $e');
    }
  }

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

  static Future<void> updateAdmin(Admin updatedAdmin) async {
    // Convert the updatedAdmin object to a map for Firebase
    final adminData = updatedAdmin.toJson();
    // Update the admin in the 'users' collection
    await _firestoreService.update('admins', updatedAdmin.name, adminData);
  }

  static Future<void> deleteAdmin(String id) async {
    await _firestoreService.delete('admins', id);
  }

static Future<Admin> getAdminByName(String adminName) async {
    List<Admin> admins = await getAllAdmins();
    return admins.firstWhere((admin) => admin.name == adminName);
  }
}
