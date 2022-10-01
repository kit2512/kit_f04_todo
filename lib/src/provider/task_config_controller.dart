import 'package:demo_state_app/src/provider/list_color.dart';
import 'package:demo_state_app/src/provider/task.dart';
import 'package:flutter/material.dart';

class TaskConfigManager extends ChangeNotifier {
  Task task = Task();
  Task getTask() {
    return task;
  }

  void setDefault() {
    task = Task(name: "");
  }

  int colorIndex(ColorList colorList) {
    return colorList.colorLists.indexOf(task.color);
  }

  void setTask(Task task) {
    this.task = task;
    notifyListeners();
  }

  void setTaskName(String taskName) {
    task.name = taskName;
    notifyListeners();
  }

  void setDateTime(DateTime? dateTime, TimeOfDay? timeOfDay) {
    task.date = dateTime;
    task.time = timeOfDay!;
    notifyListeners();
  }
}
