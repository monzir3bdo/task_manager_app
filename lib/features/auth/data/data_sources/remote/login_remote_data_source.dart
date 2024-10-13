import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/clients/login_service_client.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';

@injectable
class LoginRemoteDataSource {
  final LoginServiceClient loginServiceClient;

  LoginRemoteDataSource({required this.loginServiceClient});
  Future<LoginEntity> login(
      {required String username, required String password}) async {
    return await loginServiceClient.login(username, password);
  }
}
