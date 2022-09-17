import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:demo_state_app/src/ui/screen/task_screen.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:flutter/material.dart';

import 'ui/task_config/task_date.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      home: HomeScreen(),
    );
  }
}
