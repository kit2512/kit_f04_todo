import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/home_body/todo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoCardScreen extends StatelessWidget {
  const TodoCardScreen({Key? key, this.value = 0}) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    List data = context.watch<TaskManager>().getData(context);
    if (data.isEmpty) return buildNoData();
    return ListView.separated(
        reverse: false,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) => TodoCard(
              onDismissed: (_) {
                context.read<TaskManager>().removeTask(data[index]);
              },
              task: data[index],
              isFinished: isFinished(value),
              index: index,
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
