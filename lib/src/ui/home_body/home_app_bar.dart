
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demo_state_app/src/ui/screen/profile_screen.dart';
import 'package:demo_state_app/src/ui/screen/home_screen.dart';



class BuildAppBar extends StatefulWidget implements PreferredSizeWidget {
   BuildAppBar({
    Key? key, required this.title, this.prefixIcon, this.suffixIcon
  }) : super(key: key);
String title;
Icon? prefixIcon;
Icon? suffixIcon;
  @override
  State<BuildAppBar> createState() => _BuildAppBarState(title: title, prefixIcon: prefixIcon, suffixIcon: suffixIcon);
  
  @override
  // TODO: implement preferredSize
  //Size get preferredSize => throw UnimplementedError();
  Size get preferredSize => const Size.fromHeight(50);
}

class _BuildAppBarState extends State<BuildAppBar> {
  _BuildAppBarState({
    Key? key, required this.title, this.prefixIcon, this.suffixIcon
  }) ;
  String title;
Icon? prefixIcon;
Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: prefixIcon != null? Padding(
<<<<<<< Updated upstream
        padding: EdgeInsets.fromLTRB(20.h, 0, 0, 0),
=======
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
>>>>>>> Stashed changes
        child: GestureDetector(
          child: CircleAvatar(
            backgroundColor: blackColor,
            child: prefixIcon
          ),
          onTap: () {
            setState(() {
              Navigator.push(
    context, MaterialPageRoute(builder: (context) {
    // do something
        return ProfileScreen();
    }));
            });
          },
        ),
      ) : SizedBox(),
      centerTitle: true,
      title:  Text(
        title,
        style: TextStyle(color: blackColor),
      ),
      backgroundColor: whiteColor,
      actions: suffixIcon != null?[
        Padding(
<<<<<<< Updated upstream
          padding: EdgeInsets.fromLTRB(0, 0, 20.h, 0),
=======
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
>>>>>>> Stashed changes
          child: IconButton(
              onPressed: () {},
              icon: suffixIcon?? suffixIcon!
              
              ),
        )
      ]
      : [],
    );
  }
}
