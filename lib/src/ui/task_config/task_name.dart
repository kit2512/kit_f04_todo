import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskName extends StatelessWidget {
  const TaskName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Task Name",
          style: TextStyle(
            color: HexColor("#B6B6B6"),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: HexColor("#191919"),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 23,
          ),
          decoration: InputDecoration(
              // suffixIcon: IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.add_circle_outline_sharp,
              //     )),
              ),
        ),
      ],
    );
  }
}
