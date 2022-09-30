import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../provider/task_config_controller.dart';

class TaskName extends StatelessWidget {
  final String name;

  const TaskName({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    //String data = name;
    context.read<TaskConfigManager>().task.name = name;

    final nameController = TextEditingController();
    nameController.text = name;

    return Container(
      margin: EdgeInsets.only(top: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task Name",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontSize: 15.sp,
            ),
          ),
          TextFormField(
            controller: nameController,
            onChanged: (value) {
              context.read<TaskConfigManager>().task.name = value;
            },
            autovalidateMode: AutovalidateMode.always,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            style: TextStyle(
              color: HexColor("#191919"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 23.sp,
            ),
            decoration: const InputDecoration(
              hintText: "Enter Task Name",
            ),
          ),
        ],
      ),
    );
  }
}
