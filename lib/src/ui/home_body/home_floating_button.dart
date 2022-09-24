import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/task_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class FloatingButton extends StatelessWidget {
  const FloatingButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.isFull = false,
      this.icon})
      : super(key: key);
  final String title;
  final Icon? icon;
  final void Function() onPressed;
  final bool isFull;

  @override
  Widget build(BuildContext context) {
    if (!isFull) {
      return FloatingActionButton.extended(
        onPressed: onPressed,
        label: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        icon: icon ?? icon,
        backgroundColor: Colors.black,
      );
    } else {
      return Container(
          margin: EdgeInsets.all(15.r),
          width: double.infinity.r,
          child: FloatingActionButton.extended(
            onPressed: onPressed,
            label: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            icon: icon ?? icon,
            backgroundColor: Colors.black,
          ));
    }
  }
}
