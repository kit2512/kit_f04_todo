import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:demo_state_app/src/ui/task_config/task_time.dart';
import 'package:flutter/material.dart';

class TaskConfig extends StatelessWidget {
  const TaskConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: const [
          TaskName(),
          TaskColor(),
          TaskTime(),
          TaskPlace(),
        ],
      ),
    );
  }
}
