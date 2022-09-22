import 'package:demo_state_app/src/ui/task_config/button_task.dart';
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
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Level",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontSize: 15,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  itemBuilder: (context, index) => ButtonTask(
                    index: index,
                    selectedIndex: selectedIndex,
                    listButton: taskLevel,
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
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
        ],
      ),
    );
  }
}
