import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_button.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_password_widget.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_screen_title.dart';
import 'package:maids_task/features/auth/presentation/widgets/login_user_name_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.whenOrNull(success: () {
              print('Login Successfully');
            }, failure: (message) {
              print(message);
            });
          },
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Form(
                key: context.read<AuthCubit>().loginKey,
                child: const Column(
                  children: [
                    LoginScreenTitle(),
                    Gap(150),
                    LoginUserNameWidget(),
                    Gap(20),
                    LoginPasswordWidget(),
                    Gap(30),
                    AuthButton(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
