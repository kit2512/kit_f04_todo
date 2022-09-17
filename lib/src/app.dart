import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/screen/task_screen.dart';
import 'package:demo_state_app/src/ui/task_config/task_button_save.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import 'ui/task_config/task_date.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String place = '';
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(body: TasKButtonSave()),
    );
  }
}
