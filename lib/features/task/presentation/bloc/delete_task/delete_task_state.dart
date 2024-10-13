part of 'delete_task_cubit.dart';

@freezed
class DeleteTaskState with _$DeleteTaskState {
  const factory DeleteTaskState.initial() = _Initial;
  const factory DeleteTaskState.loading() = _Loading;
  const factory DeleteTaskState.success() = _Success;
  const factory DeleteTaskState.failure({required String message}) = _Failure;
}
