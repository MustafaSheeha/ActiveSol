import 'package:active_sol_app/users/administration/admin/model/admin.dart';

abstract class SuperAdminBehavior {
  Future<void> addAdmin(Admin admin);
  Future<Admin> getAdminByName(String adminName);
  Future<List<Admin>> getAllAdmins();
  Future<void> updateAdmin(Admin updatedAdmin);
  Future<void> deleteAdmin(String id);
}
