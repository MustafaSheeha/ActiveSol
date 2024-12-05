import 'package:active_sol_app/core/models/user.dart';

abstract class SuperAdminBehavior {
  
  void assignRoles();
  Future<void> addAdmin(User admin);
  User? getAdminById(String id);
  List<User> getAllAdmins();
  Future<void> updateAdmin(User updatedAdmin);
  Future<void> deleteAdmin(String id);
}
