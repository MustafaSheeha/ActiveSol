import 'package:active_sol_app/core/utils/id_generator.dart';
import 'package:active_sol_app/users/administration/model/administration.dart';

class Admin extends Administration with IdGenerator {
  String addedBy;
  String createdAt;
  Admin({
    required this.addedBy,
    required this.createdAt,
    super.id,
    required super.name,
    required super.phone,
    required super.administrationRole,
  });
  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        addedBy: json['addedBy'],
        createdAt: json['createdAt'],
        id: json['id'],
        name: json['name'],
        phone: json['phone'],
        administrationRole: json['administrationRole'],
      );

  Map<String, dynamic> toJson() => {
        'addedBy': addedBy,
        'createdAt': createdAt,
        'id': id,
        'name': name,
        'phone': phone,
        'administrationRole': administrationRole,
      };
}
