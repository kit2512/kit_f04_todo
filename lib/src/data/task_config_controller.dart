import 'package:demo_state_app/src/data/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskConfigManager extends ChangeNotifier {
  Task task = Task(name: "");
  Task getTask() {
    return task;
  }

  void setDefault() {
    task = Task(name: "");
  }
  void setTask(Task task) {
    this.task = task;
    notifyListeners();
  }
  void setDateTime(DateTime? dateTime, TimeOfDay? timeOfDay) {
    task.date = dateTime;
    task.time = timeOfDay!;
    notifyListeners();
  }
}
