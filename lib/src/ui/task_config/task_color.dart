import 'package:demo_state_app/src/data/list_color.dart';
import 'package:demo_state_app/src/data/task_config_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class TaskColor extends StatelessWidget {
  const TaskColor({super.key});
  @override
  Widget build(BuildContext context) {
    ColorList colorList = ColorList();
    List<Color> colorLists = colorList.colorLists;
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task Color",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  width: MediaQuery.of(context).size.width - 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: colorLists.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            primary: colorLists[index],
                            shadowColor: colorLists[index],
                            primary: colorLists[index],
                            shape: const CircleBorder(),
                            maximumSize: const Size(22, 22),
                            minimumSize: const Size(22, 22),
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
                            width: 23,
                            height: 23,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 208, 206, 206),
            height: 20,
            thickness: 1.8,
          ),
        ],
      ),
    );
  }
}
