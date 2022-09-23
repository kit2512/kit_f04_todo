import 'package:demo_state_app/src/data/list_color.dart';
import 'package:demo_state_app/src/data/task_config_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class TaskColor extends StatelessWidget {
  const TaskColor({super.key});
  @override
  Widget build(BuildContext context) {
    ColorList colorList = ColorList();
    List<Color> colorLists = colorList.colorLists;
    return Container(
      margin: EdgeInsets.only(top: 25.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task Color",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(
            height: 50.h,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 2.r),
                  width: MediaQuery.of(context).size.width.w - 90.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: colorLists.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20.h,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorLists[index],
                            shadowColor: colorLists[index],
                            shape: const CircleBorder(),
                            maximumSize: Size(22.w, 22.h),
                            minimumSize: Size(22.w, 22.h),
                          ),
                          onPressed: () {
                            context.read<TaskConfigManager>().task.color =
                                colorLists[index];
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: colorLists[index],
                              shape: BoxShape.circle,
                            ),
                            width: 23.w,
                            height: 23.h,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.r),
                  height: 20.h,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 25.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 208, 206, 206),
            height: 20.h,
            thickness: 1.8,
          ),
        ],
      ),
    );
  }
}
