import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

@injectable
class GetAllTasksUseCase {
  final TaskRepo taskRepo;

  GetAllTasksUseCase({required this.taskRepo});

  Future<Result<TasksResponse>> call(
      {required int skip, required int limit}) async {
    return await taskRepo.getTasks(skip: skip, limit: limit);
  }
}
