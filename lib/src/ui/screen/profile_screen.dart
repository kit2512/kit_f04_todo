import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(title: "Profile"),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 15).r,
        child: Column(
          children: [
            const ProfileCard(),
            SizedBox(height: 50.h),
            const ProfileMenuItem(),
            const ProfileMenuItem(),
            const ProfileMenuItem(),
            const ProfileMenuItem(),
          ],
        ),
      ),
    );
  }
}
