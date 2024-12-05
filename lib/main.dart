import 'package:active_sol_app/core/functions/init_services.dart';
import 'package:active_sol_app/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}
