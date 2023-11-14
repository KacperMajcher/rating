import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/config.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/features/auth/pages/auth_gate.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<HomeCubit>()..getDeadlineItems(),
        child: MaterialApp(
          home: const AuthGate(),
          debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
        ));
  }
}