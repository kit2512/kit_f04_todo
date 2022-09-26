import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  // Future<Widget> futureCall() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   return Future.value(HomeScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('asset/profile/avatar.jpg'),
      backgroundColor: const Color.fromARGB(255, 186, 172, 181),
      backgroundImage: Image.asset('asset/wallpaper/app_backgrounds.png').image,
      durationInSeconds: 2,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: Colors.white),
      ),
      title: const Text(
        'welcome to Todo app',
        style: TextStyle(color: Colors.white),
        textScaleFactor: 2,
      ),
      loaderColor: Colors.white,
      logoWidth: 50.w,
      navigator: const HomeScreen(),

      // futureNavigator: futureCall(),
    );
  }
}
