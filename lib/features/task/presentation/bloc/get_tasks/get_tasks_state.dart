part of 'get_tasks_bloc.dart';

@freezed
class GetTasksState with _$GetTasksState {
  const factory GetTasksState.initial() = _Initial;
  const factory GetTasksState.loading() = _Loading;
  const factory GetTasksState.success() = _Success;
  const factory GetTasksState.failure({required String message}) = _Failure;
}
