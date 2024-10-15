import 'package:dio/dio.dart';
import 'package:maids_task/core/constants/app_constants.dart';
import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'tasks_service_client.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class TasksServiceClient {
  factory TasksServiceClient(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _TasksServiceClient;
  @POST('/todos/add')
  Future<void> addTask(
    @Field('todo') String todo,
    @Field('completed') bool completed,
    @Field('userId') int userId,
  );
  @DELETE('todos/{todoId}')
  Future<void> deleteTask(
    @Path('todoId') int todoId,
  );
  @GET('todos')
  Future<TasksResponse> getTasks(
    @Query('skip') int skip,
    @Query('limit') int limit,
  );
  @PUT('/todos/{todoId}')
  Future<void> updateTask(
    @Path('todoId') int todoId,
    @Field('todo') String todo,
    @Field('completed') bool completed,
    @Field('userId') int userId,
  );
}
