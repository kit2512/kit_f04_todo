import 'package:flutter/material.dart';

import 'task.dart';

class TaskManager {
  List<Task> tasks = [];
  void addTask(Task task) {
    tasks.add(task);
  }
  
  void removeTask(Task task) {
    tasks.remove(task);
  }

  void updateTask(Task task) {
    tasks[tasks.indexOf(task)] = task;
  }

  List<Task> getTasks() {
    return tasks;
  }
}
