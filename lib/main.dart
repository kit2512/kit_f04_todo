import 'package:demo_state_app/src/app.dart';
import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/data/task_config_controller.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<TaskManager>(
      create: (context) => TaskManager(),
    ),
    ChangeNotifierProvider<TaskConfigManager>(
      create: (context) => TaskConfigManager(),
    ),
  ], child: const MyApp()));
}
