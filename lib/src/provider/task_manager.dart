import 'package:demo_state_app/src/data/task_repository.dart';
import 'package:flutter/material.dart';
import 'task.dart';

class TaskManager extends ChangeNotifier {
  final List<Task> tasks;
  final TaskRepository sharePreferencesRepository;
  int index = 0;

  TaskManager({required this.tasks, required this.sharePreferencesRepository});

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
    tasks.add(task);
    sharePreferencesRepository.addTask(task);
    notifyListeners();
  }

  void removeTask(Task task) async {
    tasks.remove(task);
    sharePreferencesRepository.removeTask(task);
    notifyListeners();
  }

  void updateTask(Task task, bool isFinish, int index) async {
    tasks[index].isFinish = isFinish;
    sharePreferencesRepository.updateTask(task, index);
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
