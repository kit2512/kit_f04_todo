import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
class TaskPlace extends StatelessWidget {
  const TaskPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Due Time",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          TextFormField(
            style: TextStyle(
              color: HexColor("#191919"),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              // suffixIconConstraints:
              //     BoxConstraints(minHeight: 24, minWidth: 24),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.place_outlined,
                  color: HexColor("#000000"),
                ),
                // Image(
                //   image: const AssetImage(
                //     'asset/task/calendar.png',
                //   ),
                //   height: 19.31,
                //   width: 18,
                //   color: HexColor("#191919"),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
