import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/home_body/todo_screen.dart';

import 'package:flutter/material.dart';

import 'ui/home_body/todo_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('demo app bar'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: TodoCardScreen(
          value: 2,
        )),
      ),
    ));
  }
}
