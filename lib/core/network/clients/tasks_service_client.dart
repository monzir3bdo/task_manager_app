import 'package:maids_task/core/constants/app_constants.dart';
import 'package:retrofit/http.dart';

import '../../../features/task/domain/entity/task_entity.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class TasksServiceClient {
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
  @GET('/todos')
  Future<List<Task>> getTasks(
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
