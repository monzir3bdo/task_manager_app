import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class DeleteTaskUseCase {
  final TaskRepo taskRepo;

  DeleteTaskUseCase({required this.taskRepo});

  Future<void> deleteTask(String taskId) async {
    await taskRepo.deleteTask(taskId);
  }
}
