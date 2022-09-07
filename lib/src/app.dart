import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:demo_state_app/src/ui/task_config/task_config.dart';

import 'package:flutter/material.dart';

import 'ui/task_config/task_time.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: HomeScreen()),
      ),
    ));
  }
}
