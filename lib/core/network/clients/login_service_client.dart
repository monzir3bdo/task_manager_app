import 'package:dio/dio.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../constants/app_constants.dart';

part 'login_service_client.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class LoginServiceClient {
  factory LoginServiceClient(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LoginServiceClient;
  @POST('/auth/login')
  Future<LoginEntity> login(
    @Field('username') String username,
    @Field('password') String password,
  );
}
