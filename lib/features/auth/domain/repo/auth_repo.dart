import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';

abstract class AuthRepo {
  Future<Result<LoginEntity>> login(
      {required String email, required String password});
}
