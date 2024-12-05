import 'package:active_sol_app/core/database/remote/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  Future<void> init() async => await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
}
