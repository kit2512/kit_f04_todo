import 'dart:developer';

import 'package:demo_state_app/src/data/task.dart';
import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/task_screen.dart';

// ignore: must_be_immutable
class FloatingButton extends StatelessWidget {
  FloatingButton({Key? key, required this.title, this.icon}) : super(key: key);
  String title;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        if (title.toLowerCase() == 'add task') {
          //log('da an add task');
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TaskConfig(
              task: Task(name: ''),
            );
          }));
        }
      },
      label: Text(
        title,
      ),
      icon: icon ?? icon,
      backgroundColor: Colors.black,
    );
  }
}
