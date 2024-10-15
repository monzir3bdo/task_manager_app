import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';

class LoginUserNameWidget extends StatelessWidget {
  const LoginUserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      prefixIcon: const Icon(CupertinoIcons.person),
      controller: context.read<AuthCubit>().usernameController,
      hintText: 'Email',
      validator: (value) {
        return value!.isEmpty ? 'Username is required' : null;
      },
    );
  }
}
