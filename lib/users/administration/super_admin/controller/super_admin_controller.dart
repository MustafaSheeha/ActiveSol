import 'package:active_sol_app/core/database/remote/firebase/firestore_service.dart';
import 'package:active_sol_app/core/enums.dart';
import 'package:active_sol_app/core/models/user.dart';
import 'package:active_sol_app/users/administration/admin/model/admin.dart';
import 'package:active_sol_app/users/administration/super_admin/model/super_admin_behavior.dart';
import 'package:get/get.dart';

class SuperAdminController extends GetxController
    implements SuperAdminBehavior {
  final FirestoreService _firestoreService = FirestoreService();
  @override
  Future<void> addAdmin(Admin admin) async {
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

  @override
  void assignRoles() {
    // TODO: implement assignRoles
  }

  @override
  Future<void> deleteAdmin(String id) {
    // TODO: implement deleteAdmin
    throw UnimplementedError();
  }

  @override
  User? getAdminById(String id) {
    // TODO: implement getAdminById
    throw UnimplementedError();
  }

  @override
  List<User> getAllAdmins() {
    // TODO: implement getAllAdmins
    throw UnimplementedError();
  }

  @override
  Future<void> updateAdmin(User updatedAdmin) {
    // TODO: implement updateAdmin
    throw UnimplementedError();
  }
}
