import 'package:active_sol_app/core/models/user.dart';
import 'package:active_sol_app/users/administration/admin/model/admin.dart';

abstract class SuperAdminBehavior {
  
  void assignRoles();
  Future<void> addAdmin(Admin admin);
  User? getAdminById(String id);
  List<User> getAllAdmins();
  Future<void> updateAdmin(User updatedAdmin);
  Future<void> deleteAdmin(String id);
}
