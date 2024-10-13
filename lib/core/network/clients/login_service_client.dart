import 'package:dio/dio.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';
import 'package:retrofit/http.dart';

part 'login_service_client.g.dart';

@RestApi(baseUrl: "https://dummyjson.com/")
abstract class LoginServiceClient {
  factory LoginServiceClient(Dio dio, {String baseUrl}) = _LoginServiceClient;
  @POST('/auth/login')
  Future<LoginEntity> login(
    @Field('username') String username,
    @Field('password') String password,
  );
}
