import 'package:injectable/injectable.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

import '../../../../core/network/result/result.dart';

@injectable
class AddTaskUseCase {
  final TaskRepo taskRepo;

  AddTaskUseCase({required this.taskRepo});

  Future<Result<void>> call({required AddTaskDto taskDto}) async {
    return await taskRepo.addTask(taskDto: taskDto);
  }
}
