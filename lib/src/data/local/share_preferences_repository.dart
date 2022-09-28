import 'dart:convert';
import 'package:demo_state_app/src/data/constants.dart';
import 'package:demo_state_app/src/data/task_repository.dart';
import 'package:demo_state_app/src/provider/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesRepository implements TaskRepository {
  final SharedPreferences prefs;
  const SharePreferencesRepository({required this.prefs});

  @override
  void addTask(Task task) async {
    final list = prefs.getStringList(kTaskList) ?? <String>[];
    list.add(jsonEncode(task.toJson()));
    prefs.setStringList(kTaskList, list);
  }

  @override
  Future<List<Task>> getTasks() async {
    final list = prefs.getStringList(kTaskList) ?? <String>[];
    return Future.value(list.map((e) => Task.fromJson(jsonDecode(e))).toList());
  }

  @override
  void removeTask(Task task) async {
    final list = prefs.getStringList(kTaskList) ?? <String>[];
    list.remove(jsonEncode(task.toJson()));
    prefs.setStringList(kTaskList, list);
  }

  @override
  void updateTask(Task task, int index) async {
    final list = prefs.getStringList(kTaskList) ?? <String>[];
    list[index] = jsonEncode(task.toJson());
    prefs.setStringList(kTaskList, list);
  }
}
