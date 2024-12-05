import 'package:active_sol_app/core/models/user.dart';

abstract class Administration extends User {
  String administrationRole;
  Administration({
    super.id,
    required super.name,
    required super.phone,
    required this.administrationRole,
  });
}
