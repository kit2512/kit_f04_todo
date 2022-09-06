import 'package:demo_state_app/src/ui/profile_body/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        backgroundColor: const Color.fromARGB(239, 255, 255, 255),
      ),
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
