import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';

class LoginPasswordWidget extends StatefulWidget {
  const LoginPasswordWidget({super.key});

  @override
  State<LoginPasswordWidget> createState() => _LoginPasswordWidgetState();
}

class _LoginPasswordWidgetState extends State<LoginPasswordWidget> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      prefixIcon: const Icon(CupertinoIcons.lock),
      controller: context.read<AuthCubit>().passwordController,
      obscureText: !isVisible,
      maxLines: 1,
      hintText: 'Password'.hardCoded,
      validator: (value) {
        return value!.length < 6
            ? 'Password must be at least 6 characters'
            : null;
      },
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        icon: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
