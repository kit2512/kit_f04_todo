import 'package:demo_state_app/src/provider/list_color.dart';
import 'package:demo_state_app/src/provider/task.dart';
import 'package:flutter/material.dart';

class TaskConfigManager extends ChangeNotifier {
  List<Color> colorLists = const [
    Color.fromARGB(255, 226, 226, 226),
    Color.fromARGB(255, 239, 236, 130),
    Color.fromARGB(255, 232, 226, 176),
    Color.fromARGB(255, 22, 211, 236),
    Color.fromARGB(255, 195, 239, 144),
    Color.fromARGB(255, 240, 176, 176),
    Color.fromARGB(255, 241, 166, 191),
    Color.fromARGB(255, 68, 232, 158),
    Color.fromARGB(255, 105, 214, 233),
    Color.fromARGB(255, 196, 234, 92),
    Color.fromARGB(255, 247, 144, 245),
    Color.fromARGB(255, 131, 237, 161),
  ];
  Task task = Task();
  Task getTask() {
    return task;
  }

  void setDefault() {
    task = Task(name: "");
  }

  int colorIndex() {
    return colorLists.indexOf(task.color);
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

  void setColor(int index) {
    task.color = colorLists[index];
    notifyListeners();
  }
}
