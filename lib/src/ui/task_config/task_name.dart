import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskName extends StatefulWidget {
   String name;
   TaskName({required this.name,super.key});

  @override
  State<TaskName> createState() => _TaskNameState();
}

class _TaskNameState extends State<TaskName> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
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
            controller: nameController,
            onChanged: (value) {
              setState(() {
                widget.name = value;
              });
            },
            style: TextStyle(
              color: HexColor("#191919"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 23,
            ),
            decoration: const InputDecoration(
              hintText: "Enter Task Name",
            ),
          ),
        ],
      ),
    );
  }
}
