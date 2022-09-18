import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      child: Card(
        //margin: EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.star),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "My Daily",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.black),
                )
              ],
            )),
      ),
    );
  }
}
