import 'package:demo_state_app/src/ui/task_config/task_level.dart';
import 'package:flutter/material.dart';

import 'ui/task_config/task_date.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(body: TaskLevel()),
    );
  }
}
