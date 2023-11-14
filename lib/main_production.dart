import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rating/app/core/app.dart';
import 'package:rating/app/core/config.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/firebase_options.dart';

void main() async {
  Config.appFlavor = Flavor.production;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  runApp(const App());
}
