import 'package:active_sol_app/core/database/remote/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseService {
 static Future<void> init() async => await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
}
