// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonTask extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final List<String> listButton;
  final Function() onPressed;
  final double width;
  const ButtonTask(
      {required this.index,
      required this.selectedIndex,
      required this.listButton,
      required this.onPressed,
      required this.width,
      super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Container(
        margin: EdgeInsets.only(top: 5.r, bottom: 6.r),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 0.w,
              color: selectedIndex == index ? Colors.grey : Colors.transparent,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            padding: EdgeInsets.symmetric(vertical: 0.h),
          ),
          onPressed: onPressed,
          child: Chip(
            label: Container(
              width: 100.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10.r),
              child: Text(
                listButton[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    fontSize: 16.sp),
              ),
            ),
            backgroundColor:
                selectedIndex == index ? Colors.black : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
