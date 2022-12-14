import 'package:demo_state_app/src/provider/supplier_controller.dart';
import 'package:demo_state_app/src/provider/task.dart';
import 'package:demo_state_app/src/provider/task_config_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../home_body/home.dart';
import '../task_config/task_config.dart';

class TaskConfig extends StatelessWidget {
  final Task task;
  final String titleFloatingActionButton;
  final String titleAppBar;
  const TaskConfig(
      {required this.task,
      required this.titleAppBar,
      required this.titleFloatingActionButton,
      super.key});
  @override
  Widget build(BuildContext context) {
    Task task2;
    context.read<TaskConfigManager>().task = task;
    task2 = context.read<TaskConfigManager>().task;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingButton(
        isFull: true,
        onPressed: () {
          if (task.name!.trim() != '') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('saved'),
              elevation: 15,
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 2),
              // action: SnackBarAction(
              //   label: 'UNDO',
              //   onPressed: () {},
              // ),
            ));
            saveData(context);
            Navigator.pop(context);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please enter the name'),
                elevation: 15,
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 2),
              ),
            );
          }
        },
        title: titleFloatingActionButton,
      ),
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(title: titleAppBar),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10.r, right: 10.r),
          child: Column(
            children: [
              TaskName(name: task2.name ?? ""),
              const TaskColor(),
              TaskDate(
                dateTime: task2.date!,
                timeOfDay: task2.time,
              ),
              TaskPlace(
                place: task2.place,
              ),
              const TaskLevel(),
            ],
          ),
        ),
      ),
    );
  }

  void saveData(BuildContext context) {
    Task task2 = context.read<TaskConfigManager>().task;

    if (titleAppBar == "Add Task") {
      context.read<TaskManager>().addTask(task2);
    } else {
      int index = context.read<TaskManager>().getIndex(task);
      task2.isFinish = task.isFinish;
      context.read<TaskManager>().updateTask(task2, task2.isFinish, index);
    }
    context.read<TaskConfigManager>().setDefault();
  }
}
