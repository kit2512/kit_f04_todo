import 'dart:convert';
import 'dart:developer';

import 'package:demo_state_app/src/data/constants.dart';
import 'package:demo_state_app/src/data/task_repository.dart';
import 'package:demo_state_app/src/provider/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesRepository implements TaskRepository {
  final SharedPreferences prefs;
  const SharePreferencesRepository({required this.prefs});

  @override
  void addTask(Task task) async {
    //log(task.toJson().toString());
    final list = prefs.getStringList(kTaskList) ?? <String>[];
    list.add(jsonEncode(task.toJson()));
    prefs.setStringList(kTaskList, list);
    //log(prefs.getStringList(kTaskList).toString());
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

  // @override
  // List<Task> getData(int index) {
  //   final list = prefs.getStringList(kTaskList) ?? <String>[];

  //   return list.map((e) => Task.fromJson(jsonDecode(e))).toList();
  // }

  // @override
  // int getIndex(Task task) {
  //   final list = prefs.getStringList(kTaskList) ?? <String>[];
  //   return list.indexOf(jsonEncode(task.toJson()));
  // }

  // @override
  // Future<List<Task>> getTasksFinish() {
  //   // TODO: implement getTasksFinish
  //   throw UnimplementedError();
  // }

  // @override
  // void setFinishedTask(Task task) {
  //     final list = prefs.getStringList(kTaskList) ?? <String>[];
  //   list[index] = jsonEncode(task.toJson());
  //   prefs.setStringList(kTaskList, list);
  // }
}
