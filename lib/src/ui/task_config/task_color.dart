import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskColor extends StatelessWidget {
  const TaskColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
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
          Column(
            children: [
              SizedBox(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outlined),
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
        ],
      ),
    );
  }
}
