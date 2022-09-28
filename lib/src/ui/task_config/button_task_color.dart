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
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: listCoLor![index!],
          shape: const CircleBorder(),
          maximumSize:
              selectedIndex! == index! ? Size(29.w, 29.h) : Size(22.w, 22.h),
          minimumSize: Size(22.w, 22.h),
        ),
        onPressed: onPressed,
        child: Container(
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     shape: BoxShape.circle,
            //   ),
            //   width: 1000,
            //   height: 1000,
            // ),
            ),
      ),
    );
  }
}
