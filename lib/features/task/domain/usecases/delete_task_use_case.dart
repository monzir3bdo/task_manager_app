import 'package:injectable/injectable.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

import '../../../../core/network/result/result.dart';

@injectable
class DeleteTaskUseCase {
  final TaskRepo taskRepo;

  DeleteTaskUseCase({required this.taskRepo});

  Future<Result<void>> call({required int taskId}) async {
    return await taskRepo.deleteTask(taskId: taskId);
  }
}
