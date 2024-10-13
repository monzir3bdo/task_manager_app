import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';

class LoginPasswordWidget extends StatelessWidget {
  const LoginPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      controller: context.read<AuthCubit>().passwordController,
      hintText: 'Password'.hardCoded,
      validator: (value) {
        return value!.length < 6
            ? 'Password must be at least 6 characters'
            : null;
      },
    );
  }
}
