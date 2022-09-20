import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
 import 'package:easy_splash_screen/easy_splash_screen.dart';
class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  Future<Widget> futureCall() async {
    await Future.delayed(const Duration(seconds: 3));
    return Future.value( const HomeScreen());
  }


  @override
  Widget build(BuildContext context) {

    return EasySplashScreen(logo: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBp2FIyQApYfUL0xNZjDOl9k_LqZtE-Hd8lA&usqp=CAU'),
backgroundColor: const Color.fromARGB(255, 186, 172, 181),
// backgroundImage: 
durationInSeconds: 3,
loadingText: const Text("Loading..."),
title: const Text(
        'welcome to To Do app',
        textScaleFactor: 2,
      ),
// navigator: const HomeScreen(),
futureNavigator: futureCall(),

);

  }
}
