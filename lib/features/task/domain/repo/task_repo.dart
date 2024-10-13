import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';

import '../../../../core/network/result/result.dart';

abstract class TaskRepo {
  Future<Result<List<Task>>> getTasks();
  Future<Result<void>> addTask({required AddTaskDto taskDto});
  Future<Result<void>> updateTask({required UpdateTaskDto taskDto});
  Future<Result<void>> deleteTask({required String taskId});
}
