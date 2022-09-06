import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:demo_state_app/src/ui/task_config/task_color.dart';
import 'package:demo_state_app/src/ui/task_config/task_name.dart';
import 'package:demo_state_app/src/ui/task_config/task_place.dart';
import 'package:flutter/material.dart';

import 'ui/task_config/task_time.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: TodoCardScreen(
          value: 2,
        )),
      ),
>>>>>>> 18155ec952220b5864b324b24f2ce86ea3dd5a80
    ));
  }
}
