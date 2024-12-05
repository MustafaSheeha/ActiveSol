import 'package:active_sol_app/core/enums.dart';
import 'package:active_sol_app/core/models/user.dart';

abstract class Administration extends User {
  AdministrationRole administrationRole;
  Administration({
    required super.id,
    required super.name,
    required super.phone,
    required this.administrationRole,
  });
}
