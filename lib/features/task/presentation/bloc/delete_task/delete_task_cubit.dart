import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/usecases/delete_task_use_case.dart';

part 'delete_task_cubit.freezed.dart';
part 'delete_task_state.dart';

class DeleteTaskCubit extends Cubit<DeleteTaskState> {
  DeleteTaskCubit(this.deleteTaskUseCase)
      : super(const DeleteTaskState.initial());
  final DeleteTaskUseCase deleteTaskUseCase;
  deleteTask({required int taskId}) async {
    emit(const DeleteTaskState.loading());
    final result = await deleteTaskUseCase(taskId: taskId);
    result.when(
      success: (_) {
        emit(const DeleteTaskState.success());
      },
      failure: (message) {
        emit(DeleteTaskState.failure(message: message));
      },
    );
  }
}
