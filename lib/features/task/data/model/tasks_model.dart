import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';

part 'tasks_model.freezed.dart';
part 'tasks_model.g.dart';

@freezed
class TasksModel extends Task with _$TasksModel {
  const factory TasksModel({
    required int id,
    required String todo,
    required bool completed,
    required int userId,
  }) = _TasksModel;
  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}
