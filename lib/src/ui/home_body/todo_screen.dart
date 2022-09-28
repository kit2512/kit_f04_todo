import 'package:demo_state_app/src/ui/home_body/todo_card.dart';
import 'package:demo_state_app/src/ui/screen/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../provider/supplier_controller.dart';

class TodoCardScreen extends StatelessWidget {
  const TodoCardScreen({Key? key, this.value = 0}) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    if (context.watch<TaskManager>().getData(value).isEmpty) {
      return buildNoData();
    }
    return ListView.separated(
        reverse: false,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.h,
          );
        },
        itemCount: context.watch<TaskManager>().getData(value).length,
        itemBuilder: (context, index) => TodoCard(
              onDismissed: (_) {
                context.read<TaskManager>().removeTask(
                    context.read<TaskManager>().getData(value)[index]);
              },
              task: context.watch<TaskManager>().getData(value)[index],
              isFinished: isFinished(value),
            ));
  }

  bool isFinished(int value) {
    if (value == 2) {
      return true;
    } else {
      return false;
    }
  }

  Widget buildNoData() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "No task     ",
            style: TextStyle(fontSize: 20.sp),
          ),
          Image(
            height: 300.h,
            width: 230.w,
            image: const AssetImage("asset/task/document.png"),
          )
        ],
      ),
    );
  }
}
