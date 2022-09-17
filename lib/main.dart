import 'package:demo_state_app/src/app.dart';
import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'src/data/task_config_controller.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TaskManager(),
      ),
      ChangeNotifierProvider(
        create: (context) => TaskConfigManager(),
      )
    ],
    child: MyApp(),
  ));
}
