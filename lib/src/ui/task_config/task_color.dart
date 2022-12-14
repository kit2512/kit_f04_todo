import 'package:demo_state_app/src/provider/list_color.dart';
import 'package:demo_state_app/src/provider/task_config_controller.dart';
import 'package:demo_state_app/src/ui/task_config/button_task_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class TaskColor extends StatelessWidget {
  const TaskColor({super.key});
  @override
  Widget build(BuildContext context) {
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
                  width: 314.3.w,
                  child: Builder(builder: (context) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          context.watch<TaskConfigManager>().colorLists.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => BuildTaskColors(
                        index: index,
                        selectedIndex:
                            context.watch<TaskConfigManager>().colorIndex(),
                        listCoLor:
                            context.watch<TaskConfigManager>().colorLists,
                        onPressed: () {
                          context.read<TaskConfigManager>().setColor(index);
                        },
                      ),
                    );
                  }),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 24.r, left: 11.r),
                    // height: 20.h,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outlined,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: const Color.fromARGB(255, 208, 206, 206),
            height: 20.h,
            thickness: 1.8,
          ),
        ],
      ),
    );
  }
}
