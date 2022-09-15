import 'package:demo_state_app/src/data/list_color.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskColor extends StatelessWidget {
  final Function() onPressed;
  final List<Color> colorLists;
  const TaskColor(
      {required this.colorLists, required this.onPressed, super.key});
  @override
  Widget build(BuildContext context) {
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
                  width: MediaQuery.of(context).size.width - 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: colorLists.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      // if (index <= colorLists.length) {
                      return SizedBox(
                        height: 20,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            //backgroundColor: colorLists[index],
                            maximumSize: Size(22, 22),
                            minimumSize: Size(22, 22),
                          ),
                          onPressed: () => onPressed,
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
                  margin: const EdgeInsets.only(bottom: 18.4),
                  height: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outlined,
                      color: Colors.black,
                      size: 24,
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
      // ],
      // ),
    );
  }
}
