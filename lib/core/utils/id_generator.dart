import 'package:active_sol_app/core/database/remote/firebase/firestore_service.dart';

mixin IdGenerator {
  Future<String> generateId(String prefix) async {
    int lastId = await FirestoreService().getlastId(prefix);
    return '$prefix${DateTime.now().day}${DateTime.now().month}${DateTime.now().year}${lastId + 1}';
  }
}
