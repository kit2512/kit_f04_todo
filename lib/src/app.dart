<<<<<<< HEAD
import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import 'ui/task_config/task_time.dart';
=======
import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/home_body/todo_screen.dart';

import 'package:flutter/material.dart';

import 'ui/home_body/todo_card.dart';
>>>>>>> master

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
<<<<<<< HEAD
      body: TaskName(),
=======
      appBar: AppBar(
        title: const Text('demo app bar'),
      ),
      body: Center(
          child: TodoCardScreen(
        value: 1,
      )),
>>>>>>> master
    ));
  }
}
