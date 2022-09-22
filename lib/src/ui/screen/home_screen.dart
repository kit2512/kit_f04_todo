import 'package:demo_state_app/src/data/task.dart';
import 'package:demo_state_app/src/ui/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/home_body/home.dart';
import 'task_screen.dart';
import 'package:demo_state_app/src/ui/task_config/button_task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List<String> appBarButton = ['Today', 'Upcoming', 'Finished'];
    return Scaffold(
      floatingActionButton: FloatingButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TaskConfig(
                titleFloatingActionButton: 'Save Task',
                task: Task(name: ""),
                titleAppBar: 'Add Task',
              );
            }));
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
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              child: ListView.builder(
                itemBuilder: (context, index) => ButtonTask(
                  index: index,
                  selectedIndex: selectedIndex,
                  listButton: appBarButton,
                  onPressed: () {
                    // setState(() {
                    selectedIndex = index;

                    // }

                    // );
                  },
                ),
                itemCount: appBarButton.length,
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

        // ButtonTask(taskLevel: appBarButton, index: index, selectedIndex: selectedIndex,onPressed: (){
        //   index = selectedIndex;

        // },),
      ]),
    );
  }
}
