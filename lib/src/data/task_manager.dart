import 'package:flutter/material.dart';

import 'task.dart';

class TaskManager {
  List<Task> tasks = [
    Task(name: "Hello! I am Linh", isFinish: true),
    Task(name: "Hello! I am Mai"),
    Task(name: "Hello! I am Vu"),
    Task(name: "Hello! I am Trang")
  ];
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

  List<Task> getTasksFinish() {
    List<Task> task = [];
    for (var element in tasks) {
      if (element.isFinish) task.add(element);
    }
    return task;
  }
}
