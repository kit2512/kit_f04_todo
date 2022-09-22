import 'package:demo_state_app/src/app.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'src/ui/screen/screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<TaskManager>(
      create: (context) => TaskManager(),
    ),
    ChangeNotifierProvider<TaskConfigManager>(
      create: (context) => TaskConfigManager(),
    ),
    ChangeNotifierProvider<AppBarButton>(
      create: (context) => AppBarButton(),
    ),
  ], child: const MyApp()));
}
