part of 'get_tasks_bloc.dart';

@freezed
class GetTasksEvent with _$GetTasksEvent {
  const factory GetTasksEvent.started() = _Started;
}
