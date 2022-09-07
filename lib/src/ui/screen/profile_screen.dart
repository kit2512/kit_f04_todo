import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: BuildAppBar(title: "Profile"),
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          //mainAxisSize: MainAxisSize.max,

          children: const [
            ProfileCard(),
            SizedBox(height: 50),
            ProfileMenuItem(),
            ProfileMenuItem(),
            ProfileMenuItem(),
            ProfileMenuItem(),
          ],
        ),
      ),
    );
  }
}
