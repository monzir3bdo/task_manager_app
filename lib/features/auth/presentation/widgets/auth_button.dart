import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/functions/custom_toast.dart';
import 'package:maids_task/core/router/router.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../injection_container.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, this.onPressed, this.child});

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.width,
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(success: () {
            getIt<SharedPreferences>().setBool('loggedIn', true);
            CustomToastWidget.successToast('Welcome Back');
            context.pushNamed(destination: AppRoutes.tasks);
          }, failure: (message) {
            CustomToastWidget.errorToast(message);
          });
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().login();
                },
                child: const Center(
                  child: SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
            orElse: () {
              return ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().login();
                },
                child: Text(
                  'Login',
                  style: AppTextStyles.medium14.copyWith(color: Colors.white),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
