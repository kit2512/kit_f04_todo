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
            height: 1570.h,
            width: 1000.w,
            child: TodoCardScreen(
              value: context.watch<TaskManager>().index,
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
          color: selectedIndex == index ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextButton(
          onPressed: () {
            selectedIndex = index;
            context.read<TaskManager>().updateIndex(selectedIndex);
          },
          child: Text(
            appBarButton[index],
            style: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.black),
          ),
        ));
  }
}
