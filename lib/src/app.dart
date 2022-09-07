import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import 'ui/home_body/todo_screen.dart';
import 'ui/screen/task_screen.dart';
import 'ui/task_config/task_time.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskConfig(),
    );
  }
}
