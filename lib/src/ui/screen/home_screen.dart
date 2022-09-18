import 'package:demo_state_app/src/data/task.dart';
import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Task task = Task(name: "");
    return Scaffold(
      floatingActionButton: FloatingButton(
          onPressed: () {
            // setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TaskConfig(
                titleFloatingActionButton: 'Save Task',
                task: task,
                titleAppBar: 'Add Task',
              );
            }));
            //}
            //);
          },
          title: 'Add Task',
          icon: const Icon(Icons.add_box)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: BuildAppBar(
          title: 'Task Manager',
          prefixIcon: const Icon(
            Icons.widgets,
            color: Colors.white,
          ),
          suffixIcon: const Icon(
            Icons.notifications_none,
            color: Colors.black,
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Here's Update Today",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.search, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        AppBarButton(),
      ]),
    );
  }
}
