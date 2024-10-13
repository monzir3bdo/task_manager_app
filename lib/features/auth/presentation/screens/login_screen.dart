import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_button.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_screen_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              const LoginScreenTitle(),
              const Gap(150),
              AuthTextField(controller: TextEditingController()),
              const Gap(20),
              AuthTextField(controller: TextEditingController()),
              const Gap(30),
              const AuthButton(),
            ],
          ),
        ),
      ),
    );
  }
}
