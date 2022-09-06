import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FloatingButton extends StatelessWidget {
   FloatingButton({
    Key? key, required this.title, this.icon
  }) : super(key: key);
  String title;
  Icon? icon;


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label:  Text(
        title,
      ),
      
      icon:  icon??icon,
      backgroundColor: Colors.black,
    );
  }
}
