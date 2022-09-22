import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/home_body/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AppBarButton extends StatelessWidget {
  AppBarButton({Key? key}) : super(key: key);

  List<String> appBarButton = ['Today', 'Upcoming', 'Finished'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2280),
      builder: (context, child) => Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: appBarButton.length,
                itemBuilder: (context, index) {
                  return buildAppBarButton(index, context);
                }),
          ),
          SizedBox(
            height: 1500.h,
            width: 1000.w,
            child: TodoCardScreen(
                // value: context.watch<TaskManager>().index,
                ),
          )
        ],
      ),
    );
  }

  Widget buildAppBarButton(int index, BuildContext context) {
    return Container(
        width: 80,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Colors.black
              : Color.fromARGB(255, 255, 250, 250),
          borderRadius: BorderRadius.circular(38.5),
        ),
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextButton(
          onPressed: () {
            selectedIndex = index;
            //context.read<TaskManager>().updateIndex(selectedIndex);
          },
          child: Text(
            appBarButton[index],
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ));
  }
}
