import 'package:demo_state_app/src/data/task.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/task_manager.dart';

import '../screen/task_screen.dart';

class TodoCard extends StatelessWidget {
  const TodoCard(
      {Key? key,
      required this.task,
      required this.onDismissed,
      this.isFinished = false})
      : super(key: key);

  final bool isFinished;
  final Task task;
  final Function(DismissDirection) onDismissed;
  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat.yMMMMd('en_US');

    return Dismissible(
      background: Align(
        child: Center(
          child: Icon(
            Icons.delete_forever_rounded,
            size: 70.sp,
          ),
        ),
      ),
      onDismissed: onDismissed,
      key: UniqueKey(),
      // key: GlobalKey(),
      // key: ValueKey<Task>(task),
      child: Card(
        color: task.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, top: 10, right: 15, bottom: 15).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "School",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      //backgroundColor: backgroundColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Everyday",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TaskConfig(
                          titleFloatingActionButton: 'Save Task',
                          task: task,
                          titleAppBar: 'Edit Task',
                        );
                      }));
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7.r)),
                      child: const Icon(
                        color: Colors.white,
                        Icons.edit_outlined,
                        //size: 23.sp,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                task.name!,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              buildUnFinished(context, dateFormat)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUnFinished(BuildContext context, DateFormat dateFormat) {
    if (isFinished) {
      return Container();
    } else {
      return Column(
        children: [
          Row(
            children: [
              const Icon(Icons.calendar_month_outlined),
              Text(dateFormat.format(task.date!))
            ],
          ),
          Row(
            children: [
              const Icon(Icons.av_timer_outlined),
              Text(task.time.format(context)),
              const Spacer(),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.black,
                value: task.isFinish,
                onChanged: (value) {
                  setFinished(task, context);
                },
              )
            ],
          )
        ],
      );
    }
  }

  void setFinished(Task task, BuildContext context) {
    task.isFinish = !task.isFinish;
    context.read<TaskManager>().setFinishedTask(task);
  }
}
