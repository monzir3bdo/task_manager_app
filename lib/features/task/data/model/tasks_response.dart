import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/data/model/tasks_model.dart';

part 'tasks_response.freezed.dart';
part 'tasks_response.g.dart';

@freezed
class TasksResponse with _$TasksResponse {
  const factory TasksResponse({
    required List<TasksModel> todos,
    required int total,
    required int skip,
    required int limit,
  }) = _TasksResponse;

  factory TasksResponse.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseFromJson(json);
}
