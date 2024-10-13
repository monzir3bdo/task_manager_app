part of 'update_task_cubit.dart';

@freezed
class UpdateTaskState with _$UpdateTaskState {
  const factory UpdateTaskState.initial() = _Initial;
  const factory UpdateTaskState.loading() = _Loading;
  const factory UpdateTaskState.success() = _Success;
  const factory UpdateTaskState.failure({required String message}) = _Failure;
}
