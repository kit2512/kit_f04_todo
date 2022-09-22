import 'package:flutter/material.dart';

class ButtonTask extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final List<String> listButton;
  final Function() onPressed;
  const ButtonTask(
      {required this.index,
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
              borderRadius: BorderRadius.circular(38.5),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.black : Colors.transparent,
            borderRadius: BorderRadius.circular(38.5),
          ),
          child: Chip(
            shape: StadiumBorder(
              side: BorderSide(
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ),
            label: Text(
              listButton[index],
              style: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.black,
                  fontSize: 16),
            ),
            backgroundColor:
                selectedIndex == index ? Colors.black : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
