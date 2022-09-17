import 'package:demo_state_app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds:  const MyApp2(),
        backgroundColor: const Color.fromARGB(255, 248, 187, 218),
        title: const Text(
          'welcome to To Do app',
          textScaleFactor: 2,
        ),
        
        image: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBp2FIyQApYfUL0xNZjDOl9k_LqZtE-Hd8lA&usqp=CAU'),
        
        loadingText: const Text("Loading"),
        photoSize: 50.0,
        loaderColor: const Color.fromARGB(255, 186, 172, 181),
        // ignore: prefer_const_constructors
        // gradientBackground: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   // stops: const [0.5, 5, 7, 9],
        //   colors: const [
        //     Colors.blueGrey,
        //     Colors.greenAccent,
        //     Colors.lightGreen,
        //     Colors.teal,
        //   ],
        // ),
      ),
    );
  }
}
