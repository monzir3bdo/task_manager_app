import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_button.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_image.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_password_widget.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_screen_title.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_subtitle_widget.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_user_name_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Form(
            key: context.read<AuthCubit>().loginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginImage(),
                const Gap(30),
                const LoginScreenTitle(),
                const Gap(20),
                const LoginSubtitleWidget(),
                Gap(context.height * 0.07),
                const LoginUserNameWidget(),
                const Gap(20),
                const LoginPasswordWidget(),
                const Gap(50),
                const AuthButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
