import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_config.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import 'ui/home_body/todo_screen.dart';
import 'ui/task_config/task_time.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('demo app bar'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: TaskConfig()),
      ),
    ));
  }
}
