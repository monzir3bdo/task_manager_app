import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, this.onPressed, this.child});
  final VoidCallback? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.width,
      child: ElevatedButton(
        onPressed: () {
          context.read<AuthCubit>().login();
        },
        child: child,
      ),
    );
  }
}
