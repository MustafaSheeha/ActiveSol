import 'package:active_sol_app/core/models/user.dart';
import 'package:active_sol_app/core/repository/admin_repository.dart';
import 'package:active_sol_app/users/administration/admin/model/admin.dart';
import 'package:active_sol_app/users/administration/super_admin/model/super_admin_behavior.dart';
import 'package:get/get.dart';

class SuperAdminController extends GetxController
    implements SuperAdminBehavior {
  @override
  Future<void> addAdmin(Admin admin) async {
    AdminRepository.addAdmin(admin);
  }

  @override
  Future<void> deleteAdmin(String id) {
    return AdminRepository.deleteAdmin(id);
  }

  @override
  Future<Admin> getAdminByName(String adminName) {
    return AdminRepository.getAdminByName(adminName);
  }

  @override
  Future<List<Admin>> getAllAdmins() async {
    return await AdminRepository.getAllAdmins();
  }

  @override
  Future<void> updateAdmin(Admin updatedAdmin) async {
    return await AdminRepository.updateAdmin(updatedAdmin);
  }
}
