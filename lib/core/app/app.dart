import 'package:flutter/material.dart';
import 'package:maids_task/core/router/router.dart';
import 'package:maids_task/core/styles/app_theme.dart';
import 'package:maids_task/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.onGenerate,
      theme: lightTheme,
      initialRoute: getIt<SharedPreferences>().getBool('loggedIn') ?? false
          ? AppRoutes.tasks
          : AppRoutes.login,
    );
  }
}
