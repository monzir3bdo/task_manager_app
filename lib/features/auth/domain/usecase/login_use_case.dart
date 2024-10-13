import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';
import 'package:maids_task/features/auth/domain/repo/auth_repo.dart';

@injectable
class LoginUseCase {
  final AuthRepo authRepo;

  LoginUseCase({required this.authRepo});
  Future<Result<LoginEntity>> call(
      {required String email, required String password}) async {
    return authRepo.login(email: email, password: password);
  }
}
