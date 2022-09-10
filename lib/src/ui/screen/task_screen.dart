import 'package:demo_state_app/src/data/list_color.dart';
import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:demo_state_app/src/ui/task_config/task_button_save.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:demo_state_app/src/ui/task_config/task_time.dart';
import 'package:flutter/material.dart';

class TaskConfig extends StatelessWidget {
  const TaskConfig({super.key});
  @override
  Widget build(BuildContext context) {
    ColorList colorList = ColorList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(title: "Edit task"),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const TaskName(),
              TaskColor(
                colorLists: colorList.colorLists,
                onPressed: () {},
              ),
              const TaskTime(),
              TaskPlace(
                place: "",
                onPressed: () {},
              ),
              const TaskLevel(),
              const TasKButtonSave(),
            ],
          ),
        ),
      ),
    );
  }
}
