import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //height: 100,
        Card(
      // /borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      elevation: 6,

      shadowColor: const Color.fromARGB(255, 110, 109, 105),
      //margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Padding(
        padding:
            EdgeInsets.only(left: 20.r, right: 20.r, top: 10.r, bottom: 10.r),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: CircleAvatar(
                radius: 30.r,
                backgroundImage: const AssetImage("asset/profile/avatar.jpg"),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Trần Phương Bảo Ly",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    "teambatonct5d@gmail.com",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 157, 155, 148),
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
