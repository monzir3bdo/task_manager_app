part of 'add_task_cubit.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState.initial() = _Initial;
  const factory AddTaskState.toggleNewTaskState({required bool completed}) =
      _ToggleNewTaskState;
  const factory AddTaskState.loading() = _Loading;
  const factory AddTaskState.success() = _Success;
  const factory AddTaskState.failure({required String message}) = _Failure;
}
