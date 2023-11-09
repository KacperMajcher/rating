import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/config.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/features/auth/pages/auth_gate.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';
import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart';
import 'package:rating/firebase_options.dart';
import 'package:rating/repositories/deadline_repository.dart';

void main() async {
  Config.appFlavor = Flavor.production;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(DeadlineRepository(DeadlineRemoteDataSource()))..getDeadlineItems(),
      child: MaterialApp(
        home: const AuthGate(),
        debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      ),
    );
  }
}