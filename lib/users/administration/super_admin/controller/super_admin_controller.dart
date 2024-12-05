import 'package:active_sol_app/core/models/user.dart';
import 'package:active_sol_app/users/administration/super_admin/model/super_admin_behavior.dart';
import 'package:get/get.dart';
class SuperAdminController extends GetxController implements SuperAdminBehavior {
  @override
  Future<void> addAdmin(User admin) {
    // TODO: implement addAdmin
    throw UnimplementedError();
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