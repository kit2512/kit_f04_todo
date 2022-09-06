import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/home_body/todo_card.dart';
import 'package:flutter/cupertino.dart';

class TodoCardScreen extends StatelessWidget {
  const TodoCardScreen({Key? key, this.value = 0}) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    TaskManager taskManager = TaskManager();
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: taskManager.tasks.length,
        itemBuilder: (context, index) => TodoCard(
              task: taskManager.tasks[index],
              isFinished: isFinished(value),
            ));
  }

  bool isFinished(int index) {
    if (index == 2) {
      return true;
    } else {
      return false;
    }
  }
}