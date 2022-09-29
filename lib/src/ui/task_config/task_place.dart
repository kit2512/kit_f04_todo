import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskPlace extends StatelessWidget {
  final String place;

  const TaskPlace({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Place",
            style: TextStyle(
              color: HexColor("#B6B6B6"),
              fontStyle: FontStyle.normal,
              fontSize: 15.sp,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 35.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.place_outlined,
                        color: HexColor("#000000"),
                        size: 22.sp,
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
        ],
      ),
    );
  }
}
