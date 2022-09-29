import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../provider/list_color.dart';

class BuildTaskColors extends StatelessWidget {
  final int? index;
  final int? selectedIndex;
  final List<Color>? listCoLor;
  final Function()? onPressed;
  const BuildTaskColors(
      {required this.index,
      required this.selectedIndex,
      required this.listCoLor,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 50.w,
      child: Container(
        width: 25.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedIndex == index ? Colors.grey : Colors.transparent,
            width: 1.3.w,
          ),
        ),
        margin: EdgeInsets.only(right: 10.r),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: listCoLor![index!],
            side: BorderSide(
                width: selectedIndex! == index! ? 2.0.w : 0.w,
                color: selectedIndex! == index!
                    ? Colors.white
                    : Colors.transparent),
            // fixedSize: Size.fromWidth(10.w),

            shape: const CircleBorder(),
            maximumSize: Size(24.w, 24.h),
            minimumSize: Size(24.w, 24.h),
          ),
          onPressed: onPressed,
          child: Container(
            decoration: BoxDecoration(
              color:
                  // selectedIndex! == index! ? Colors.white : listCoLor![index!],
                  listCoLor![index!],
              shape: BoxShape.circle,
            ),
            width: 40.w,
            height: 40.h,
          ),
        ),
      ),
    );
  }
}
