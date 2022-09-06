import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:demo_state_app/src/ui/screen/profile_screen.dart';

import 'package:flutter/material.dart';

import 'ui/home_body/todo_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: TodoCard(
          isFinished: true,
          task: Task(name: "demo", color: Color.fromARGB(255, 232, 236, 12)),
        ),
      ),
    ));
  }
}
