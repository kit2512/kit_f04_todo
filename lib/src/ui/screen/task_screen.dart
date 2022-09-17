import 'dart:developer';

import 'package:demo_state_app/src/data/list_color.dart';
import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:demo_state_app/src/ui/task_config/task_button_save.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:demo_state_app/src/ui/task_config/task_date.dart';
import 'package:flutter/material.dart';

class TaskConfig extends StatelessWidget {
  Task? task;
  TaskConfig({this.task, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(title: "Edit task"),
      body: SingleChildScrollView(
        child: Container(
          
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            
            children: [
<<<<<<< HEAD
              TaskName(name: task!.name),
              TaskColor(color: task!.color),
              TaskDate(date: task!.date, time: task!.time),
=======
              // IconButton(onPressed: (){
              //   log(task.name);
              // }, icon: Icon(Icons.find_in_page)),
              TaskName(name: task.name),
              // TaskColor(
              //   colorLists: colorList.colorLists,
              //   onPressed: () {},
              // ),
              // const TaskDate(onTimeChanged: ),
              // TaskPlace(
              //   place: "",
              //   onPressed: () {},
              // ),
>>>>>>> 70e83cf28874d5165586dfb4cf1304711d3e8da6
              const TaskLevel(),
              const TasKButtonSave(),
            ],
          ),
        ),
      ),
    );
  }
}
