import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

@injectable
class UpdateTaskUseCase {
  final TaskRepo taskRepo;

  UpdateTaskUseCase({required this.taskRepo});

  Future<Result<void>> call({required UpdateTaskDto taskDto}) {
    return taskRepo.updateTask(taskDto: taskDto);
  }
}
