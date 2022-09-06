
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const blackColor = Color(0xff191919);
const whiteColor = Colors.white; // Color(0xffB6B6B6);

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        allowFontScaling: false,
        builder: () => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const MyHomePage(title: 'Flutter to do app'),
              debugShowCheckedModeBanner: false,
            ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Add Task",
        ),
        icon: const Icon(Icons.add_box),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20.h, 0, 0, 0),
          child: GestureDetector(
            child: const CircleAvatar(
              backgroundColor: blackColor,
              child: Icon(
                Icons.widgets,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Task Manager',
          style: TextStyle(color: blackColor),
        ),
        backgroundColor: whiteColor,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20.h, 0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: blackColor,
                )),
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Here's Update Today",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: blackColor),
                  width: 50.w,
                  height: 50.h,
                  child: const Icon(Icons.search, color: whiteColor),
                ),
              )
            ],
          ),
        ),
        AppBarButton(),
        
      ]),
    );
  }
}

class AppBarButton extends StatefulWidget {
  const AppBarButton({Key? key}) : super(key: key);

  @override
  _AppBarButton createState() => _AppBarButton();
}

class _AppBarButton extends State<AppBarButton> {
  List<String> appBarButton = ['Today', 'Upcoming', 'Finished'];
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: appBarButton.length,
          itemBuilder: (context, index) {
            return buildAppBarButton(index);
          }),
    );
  }

  Widget buildAppBarButton(int index)
  {
 return Container(
  width: 130.w,
        decoration: BoxDecoration(
          color: selectedIndex == index ? blackColor : whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.fromLTRB(0, 5.h, 0, 5.h),
        margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
        child: TextButton(
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Text(
            appBarButton[index],
            style: TextStyle(color: selectedIndex == index ? whiteColor : blackColor),
          ),
        ));
  }
}
