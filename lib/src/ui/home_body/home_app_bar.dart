import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/profile_screen.dart';

// ignore: must_be_immutable
class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  BuildAppBar({Key? key, required this.title, this.prefixIcon, this.suffixIcon})
      : super(key: key);
  String title;
  Icon? prefixIcon;
  Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: prefixIcon != null
          ? Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: GestureDetector(
                child: CircleAvatar(
                    backgroundColor: Colors.black, child: prefixIcon),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfileScreen();
                  }));
                },
              ),
            )
          : IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      actions: suffixIcon != null
          ? [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: IconButton(
                    onPressed: () {}, icon: suffixIcon ?? suffixIcon!),
              )
            ]
          : [],
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  //Size get preferredSize => throw UnimplementedError();
  Size get preferredSize => const Size.fromHeight(50);
}
