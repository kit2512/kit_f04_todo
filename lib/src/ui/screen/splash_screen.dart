import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  // Future<Widget> futureCall() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   return Future.value(HomeScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBp2FIyQApYfUL0xNZjDOl9k_LqZtE-Hd8lA&usqp=CAU'),
      backgroundColor: const Color.fromARGB(255, 186, 172, 181),
      backgroundImage: const NetworkImage(
          'https://mir-s3-cdn-cf.behance.net/project_modules/disp/496ecb14589707.562865d064f9e.png'),

      durationInSeconds: 2,
      loadingText: const Text("Loading..."),
      title: const Text(
        'welcome to Todo app',
        textScaleFactor: 2,
      ),
navigator:  HomeScreen(),

      // futureNavigator: futureCall(),
    );
  }
}
