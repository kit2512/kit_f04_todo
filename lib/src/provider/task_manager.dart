import 'package:demo_state_app/src/data/local/share_preferences_repository.dart';
import 'package:demo_state_app/src/ui/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'task.dart';

class TaskManager extends ChangeNotifier {
  List<Task> tasks = [];

  int index = 0;

  void getDataFromLocalStorage() async {
    SharePreferencesRepository sharePreferencesRepository =
        SharePreferencesRepository(
            prefs: await SharedPreferences.getInstance());
    sharePreferencesRepository.getTasks().then((value) => tasks.addAll(value));
    notifyListeners();
  }

  List<Task> getData(int index) {
    if (index == 2) {
      return getTasksFinish();
    } else {
      return tasks;
    }
  }

  int getIndex(Task task) {
    return tasks.indexOf(task);
  }

  void addTask(Task task) async {
    SharePreferencesRepository sharePreferencesRepository =
        SharePreferencesRepository(
            prefs: await SharedPreferences.getInstance());
    tasks.add(task);
    sharePreferencesRepository.addTask(task);
    notifyListeners();
  }

  void removeTask(Task task) async {
    SharePreferencesRepository sharePreferencesRepository =
        SharePreferencesRepository(
            prefs: await SharedPreferences.getInstance());
    tasks.remove(task);
    sharePreferencesRepository.removeTask(task);
    notifyListeners();
  }

  void updateTask(Task task, int index) async {
    SharePreferencesRepository sharePreferencesRepository =
        SharePreferencesRepository(
            prefs: await SharedPreferences.getInstance());
    tasks[index] = task;
    sharePreferencesRepository.updateTask(task, index);
    notifyListeners();
  }

  void setFinishedTask(Task task) async {
    SharePreferencesRepository sharePreferencesRepository =
        SharePreferencesRepository(
            prefs: await SharedPreferences.getInstance());
    tasks[tasks.indexOf(task)] = task;
    sharePreferencesRepository.updateTask(task, tasks.indexOf(task));
    notifyListeners();
  }

  List<Task> getTasksFinish() {
    List<Task> task = [];
    for (var element in tasks) {
      if (element.isFinish) task.add(element);
    }

    return task;
  }
}
