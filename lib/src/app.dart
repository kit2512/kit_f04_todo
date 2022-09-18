import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:demo_state_app/src/ui/screen/splash_screen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: SplashScreenPage(),
    );
  }
}
