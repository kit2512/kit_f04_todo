import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:demo_state_app/src/ui/screen/screen.dart';
import 'package:demo_state_app/src/ui/screen/splash_screen.dart';
import 'package:demo_state_app/src/ui/task_config/task_level.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      // home: (Scaffold(
      //   body: const TaskLevel(),
      // )),
      home: const SplashScreenPage(),
    );
  }
}
