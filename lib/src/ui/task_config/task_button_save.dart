import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_date.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import '../home_body/home_floating_button.dart';

class TasKButtonSave extends StatelessWidget {
  String? name;
  Color? color;
  DateTime? date;
  TimeOfDay? time;
  String? place;
  Level? level;
   TasKButtonSave({super.key});
   Task task = Task();
  @override
  
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 168, left: 10, right: 10),
      width: 400,
      child: FloatingActionButton.extended(
        onPressed: () {
          TaskName(name: task.name!);
          TaskColor(color: task.color);
          TaskDate(date: task.date, time: task.time);
          TaskPlace(place: task.place!);
          const TaskLevel();
        },
        label: const Text("Save"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
