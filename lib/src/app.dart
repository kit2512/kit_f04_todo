import 'package:demo_state_app/src/ui/home_body/home_body.dart';
import 'package:demo_state_app/src/ui/home_body/widgets/todo_view_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ThemeDataWidget(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const HomeBody(
            appTitle: "Demo App",
          ),
        ),
      ),
    );
  }
}
