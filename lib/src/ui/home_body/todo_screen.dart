import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/home_body/todo_card.dart';
import 'package:demo_state_app/src/ui/screen/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoCardScreen extends StatelessWidget {
  const TodoCardScreen({Key? key, this.value = 0}) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    // List data = context.watch<TaskManager>().getTasks();
    // List data = [];

    if (context.watch<TaskManager>().getData(value).isEmpty)
      return buildNoData();
    return ListView.separated(
        reverse: false,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: context.watch<TaskManager>().getData(value).length,
        itemBuilder: (context, index) => TodoCard(
              onDismissed: (_) {
                context.read<TaskManager>().removeTask(
                    context.read<TaskManager>().getData(value)[index]);
              },
              task: context.watch<TaskManager>().getData(value)[index],
              isFinished: isFinished(value),
            ));
  }

  bool isFinished(int value) {
    if (value == 2) {
      return true;
    } else {
      return false;
    }
  }

  Widget buildNoData() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "No task     ",
            style: TextStyle(fontSize: 20),
          ),
          Image(
            //color: Colors.amber,
            height: 300,
            width: 230,
            image: AssetImage("asset/task/document.png"),
          )
        ],
      ),
    );
  }
}
