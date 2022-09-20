import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../data/task_config_controller.dart';

class TaskName extends StatelessWidget {
  final String name;

  const TaskName({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    //String data = name;
    final nameController = TextEditingController();
    nameController.text = name;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task Name",
            style: TextStyle(
              fontFamily: "Roboto",
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          TextFormField(
            controller: nameController,
            onChanged: (value) {
              context.read<TaskConfigManager>().task.name = value;
            },
            onFieldSubmitted: (value) {
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
              fontSize: 23,
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
