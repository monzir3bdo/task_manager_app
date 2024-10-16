import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/usecases/add_task_usecase.dart';

part 'add_task_cubit.freezed.dart';
part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(this.addTaskUseCase) : super(const AddTaskState.initial());
  final AddTaskUseCase addTaskUseCase;
  GlobalKey<FormState> newTaskKey = GlobalKey<FormState>();
  TextEditingController newTaskController = TextEditingController();
  bool isFinished = false;
  addNewTask() async {
    if (newTaskKey.currentState!.validate()) {
      emit(const AddTaskState.loading());
      final result = await addTaskUseCase(
          taskDto: AddTaskDto(
        todo: newTaskController.text,
        completed: isFinished,
        userId: 5,
      ));
      result.when(
        success: (_) {
          emit(const AddTaskState.success());
        },
        failure: (message) {
          emit(AddTaskState.failure(message: message));
        },
      );
    }
  }

  toggleNewTaskButton() {
    isFinished = !isFinished;
    emit(AddTaskState.toggleNewTaskState(completed: isFinished));
  }

  @override
  Future<void> close() {
    newTaskController.dispose();
    return super.close();
  }
}
