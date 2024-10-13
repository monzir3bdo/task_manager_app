import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/styles/app_theme.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/screens/login_screen.dart';
import 'package:maids_task/injection_container.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const LoginScreen(),
      ),
    );
  }
}
