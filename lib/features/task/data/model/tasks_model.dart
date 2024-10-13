import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_model.freezed.dart';

@freezed
class TasksModel with _$TasksModel {
  const factory TasksModel({
    required String id,
    required String todo,
    required bool completed,
    required int userId,
  }) = _TasksModel;
  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}
