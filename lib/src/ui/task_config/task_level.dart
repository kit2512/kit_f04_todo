import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskLevel extends StatefulWidget {
  const TaskLevel({super.key});

  @override
  State<TaskLevel> createState() => _TaskLevelState();
}

class _TaskLevelState extends State<TaskLevel> {
  List<String> taskLevel = ['Urgent', 'Basic', 'Important'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Level",
          style: TextStyle(
            color: HexColor("#B6B6B6"),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 45,
              child: ListView.builder(
                itemBuilder: (context, index) => buildTaskLevel(index),
                itemCount: taskLevel.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 208, 206, 206),
              height: 20,
              thickness: 1.8,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 195),
          width: 500,
          child: FloatingButton(title: "Save Task"),
        ),
      ],
    );
  }

  Widget buildTaskLevel(int index) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: selectedIndex == index
            ? Colors.black
            : Color.fromARGB(255, 255, 250, 250),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Text(
          taskLevel[index],
          style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
