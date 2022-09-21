import 'package:flutter/material.dart';

 class ButtonTask extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final List<String> listButton;
  final Function() onPressed;
  const ButtonTask({
    required this.index,
    required this.selectedIndex,
    required this.listButton,
    required this.onPressed,
    super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Container(
            width: 180,
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? Colors.black
                  : Color.fromARGB(255, 255, 250, 250),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Chip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.5),
              ),
              label: Text(
                listButton[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    fontSize: 16),
              ),
              backgroundColor: selectedIndex == index
                  ? Colors.black
                  : Color.fromARGB(255, 255, 250, 250),
            ),
          )),
    );
  }
}