import 'package:demo_state_app/src/app.dart';
import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
<<<<<<< HEAD
  runApp(MyApp());
=======
  runApp(ChangeNotifierProvider(
    create: (context) => TaskManager(),
    child: MyApp(),
  ));
>>>>>>> master
}
