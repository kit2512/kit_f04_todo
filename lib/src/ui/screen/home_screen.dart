import 'screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TaskConfig(
                    titleFloatingActionButton: 'Save Task',
                    task: Task(name: ""),
                    titleAppBar: 'Add Task',
                  );
                },
              ),
            );
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
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(children: [
          // Padding(
          //padding: const EdgeInsets.all(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Welcome Back!",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    "Here's Update Today",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 28.sp),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  width: 50.w,
                  height: 50.h,
                  child: const Icon(Icons.search, color: Colors.white),
                ),
              )
            ],
          ),

          SizedBox(
            height: 60.h,
            child: ListView.builder(
              itemBuilder: (context, index) => ButtonTask(
                index: index,
                selectedIndex: context.watch<AppBarButton>().selectedIndex,
                listButton: context.watch<AppBarButton>().appBarButton,
                onPressed: () {
                  // setState(() {
                  // selectedIndex = index;
                  context.read<AppBarButton>().setSelectedIndex(index);
                  // }

                  // );
                },
                width: 121.w,
              ),
              itemCount: context.watch<AppBarButton>().appBarButton.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: TodoCardScreen(
              // value: context.watch<TaskManager>().index,
              value: context.watch<AppBarButton>().selectedIndex,
            ),
          ),
        ]),
      ),
    );
  }
}

class AppBarButton extends ChangeNotifier {
  int selectedIndex = 0;
  List<String> appBarButton = ['Today', 'Upcoming', 'Finished'];
  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
