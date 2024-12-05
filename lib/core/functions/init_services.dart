import 'package:active_sol_app/core/database/local/hive/hive_service.dart';

import '../database/remote/firebase/firebase_service.dart';

Future<void> initServices() async {
  await FirebaseService.init();
  await HiveService.init();
}
