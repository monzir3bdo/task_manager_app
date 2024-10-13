import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class AddTaskUseCase {
  final TaskRepo taskRepo;

  AddTaskUseCase({required this.taskRepo});

  Future<void> addTask(AddTaskDto taskDto) async {
    await taskRepo.addTask(taskDto: taskDto);
  }
}
