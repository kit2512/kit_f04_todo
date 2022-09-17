import 'package:demo_state_app/src/ui/screen/task_screen.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // String place = '';
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(body: TaskConfig()),
    );
  }
}
