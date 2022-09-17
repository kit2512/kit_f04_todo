import 'package:flutter/material.dart';

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
        ),
        icon: icon ?? icon,
        backgroundColor: Colors.black,
      );
    } else {
      return Container(
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          child: FloatingActionButton.extended(
            onPressed: onPressed,
            label: Text(
              title,
            ),
            icon: icon ?? icon,
            backgroundColor: Colors.black,
          ));
    }
  }
}
