import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rating/app/core/app.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/app/firebase_options.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}
