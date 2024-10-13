import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class UpdateTaskUseCase {
  final TaskRepo taskRepo;

  UpdateTaskUseCase({required this.taskRepo});

  Future<void> updateTask(UpdateTaskDto task) {
    return taskRepo.updateTask(task);
  }
}
