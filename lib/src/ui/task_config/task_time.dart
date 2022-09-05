import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskTime extends StatelessWidget {
  const TaskTime({super.key});

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
              fontSize: 23,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "asset/icon/calendar.svg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
