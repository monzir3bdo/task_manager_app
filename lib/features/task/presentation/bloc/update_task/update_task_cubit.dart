import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

import '../../../domain/dtos/update_task_dto.dart';

part 'update_task_cubit.freezed.dart';
part 'update_task_state.dart';

class UpdateTaskCubit extends Cubit<UpdateTaskState> {
  UpdateTaskCubit(this.taskRepo) : super(const UpdateTaskState.initial());
  GlobalKey<FormState> newTaskKey = GlobalKey<FormState>();
  TextEditingController updateTaskController = TextEditingController();
  final TaskRepo taskRepo;
  bool isFinished = false;
  toggleNewTaskButton() {
    isFinished = !isFinished;
  }

  updateTask(int todoId) async {
    if (newTaskKey.currentState!.validate()) {
      emit(const UpdateTaskState.loading());
      final result = await taskRepo.updateTask(
          taskDto: UpdateTaskDto(
        todo: updateTaskController.text,
        completed: isFinished,
        userId: 5,
        todoId: todoId,
      ));
      result.when(
        success: (_) {
          emit(const UpdateTaskState.success());
        },
        failure: (message) {
          emit(UpdateTaskState.failure(message: message));
        },
      );
    }
  }

  @override
  Future<void> close() {
    updateTaskController.dispose();
    return super.close();
  }
}
