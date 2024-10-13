import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:maids_task/features/auth/domain/usecase/login_use_case.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.loginUseCase) : super(const AuthState.initial());
  final LoginUseCase loginUseCase;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> login() async {
    if (loginKey.currentState!.validate()) {
      emit(const AuthState.loading());
      final result = await loginUseCase(
          username: usernameController.text.trim(),
          password: passwordController.text);
      result.when(
        success: (_) {
          emit(const AuthState.success());
        },
        failure: (message) {
          emit(AuthState.failure(message: message));
        },
      );
    }
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
