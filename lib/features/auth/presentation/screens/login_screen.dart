import 'package:flutter/material.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_screen_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LoginScreenTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
