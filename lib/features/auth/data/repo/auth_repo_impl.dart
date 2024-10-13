import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/auth/data/data_sources/remote/login_remote_data_source.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';
import 'package:maids_task/features/auth/domain/repo/auth_repo.dart';

@injectable
class AuthRepoImpl implements AuthRepo {
  final LoginRemoteDataSource remoteDataSource;

  AuthRepoImpl({required this.remoteDataSource});
  @override
  Future<Result<LoginEntity>> login(
      {required String username, required String password}) async {
    try {
      final response =
          await remoteDataSource.login(username: username, password: password);
      return Result.success(response);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
