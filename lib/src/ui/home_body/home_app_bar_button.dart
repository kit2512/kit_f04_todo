import 'package:demo_state_app/src/ui/home_body/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarButton extends StatefulWidget {
  const AppBarButton({Key? key}) : super(key: key);

  @override
  _AppBarButton createState() => _AppBarButton();
}

class _AppBarButton extends State<AppBarButton> {
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
                  return buildAppBarButton(index);
                }),
          ),
          SizedBox(
            height: 1430.h,
            width: 1000.w,
            child:  TodoCardScreen(
              value: selectedIndex,
            ),
          )
        ],
      ),
    );
  }

  Widget buildAppBarButton(int index) {
    return Container(
        width: 80,
        decoration: BoxDecoration(
          color: selectedIndex == index ? blackColor : whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextButton(
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Text(
            appBarButton[index],
            style: TextStyle(
                color: selectedIndex == index ? whiteColor : blackColor),
          ),
        ));
  }
}
