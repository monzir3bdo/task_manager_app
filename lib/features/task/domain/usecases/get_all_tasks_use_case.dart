import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class GetAllTasksUseCase {
  final TaskRepo taskRepo;

  GetAllTasksUseCase({required this.taskRepo});

  Future<Result<List<Task>>> getAllTasks() async {
    return await taskRepo.getTasks();
  }
}
