import 'package:flutter/material.dart';

import 'package:demo_state_app/src/ui/home_body/home.dart';

const blackColor = Color(0xff191919);
const whiteColor = Colors.white; // Color(0xffB6B6B6);

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingButton(title: 'add task', icon: const Icon(Icons.add_box)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: BuildAppBar(
          title: 'Task Manager',
          prefixIcon: const Icon(
            Icons.widgets,
            color: Colors.white,
          ),
          suffixIcon: const Icon(
            Icons.notifications_none,
            color: blackColor,
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
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
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.search, color: whiteColor),
                ),
              )
            ],
          ),
        ),
        const AppBarButton(),
      ]),
    );
  }
}
