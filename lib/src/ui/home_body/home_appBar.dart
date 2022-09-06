import 'package:flutter/material.dart';

<<<<<<< HEAD
=======

>>>>>>> 16691acbd5a56c5520cf3b35a2ec8727bb29e584
import 'package:demo_state_app/src/ui/screen/profile_screen.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildAppBar> createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: GestureDetector(
          child: const CircleAvatar(
            backgroundColor: blackColor,
            child: Icon(
              Icons.widgets,
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                // do something
                return ProfileScreen();
              }));
            });
          },
        ),
      ),
      centerTitle: true,
      title: const Text(
        'Task Manager',
        style: TextStyle(color: blackColor),
      ),
      backgroundColor: whiteColor,
      actions: [
        Padding(
<<<<<<< HEAD
=======

>>>>>>> 16691acbd5a56c5520cf3b35a2ec8727bb29e584
          padding: EdgeInsets.only(left: 20),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: blackColor,
              )),
        )
      ],
    );
  }
}
