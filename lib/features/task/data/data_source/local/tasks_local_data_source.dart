import 'dart:convert';

import 'package:maids_task/features/task/data/model/tasks_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const cachedPosts = 'cached_posts';

class TasksLocalDataSource {
  final SharedPreferences sharedPreferences;

  TasksLocalDataSource({required this.sharedPreferences});
  Future<void> cacheTasks(List<TasksModel> tasks) {
    List tasksToJson =
        tasks.map<Map<String, dynamic>>((task) => task.toJson()).toList();
    sharedPreferences.setString(cachedPosts, jsonEncode(tasksToJson));
    return Future.value();
  }

  Future<List<TasksModel>> getTasks() {
    final jsonString = sharedPreferences.getString(cachedPosts);
    if (jsonString != null) {
      List decodedJson = json.decode(jsonString);
      List<TasksModel> tasks = decodedJson
          .map<TasksModel>((task) => TasksModel.fromJson(task))
          .toList();
      return Future.value(tasks);
    } else {
      throw Exception('Empty Cached');
    }
  }
}
