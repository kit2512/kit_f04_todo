import 'package:demo_state_app/src/data/task_manager.dart';
import 'package:demo_state_app/src/ui/home_body/todo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TodoCardScreen extends StatelessWidget {
  const TodoCardScreen({Key? key, this.value = 0}) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    List data = getData(value, context);

    return ListView.separated(
        reverse: true,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) => TodoCard(
              task: data[index],
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

  List getData(int value, BuildContext context) {
    if (isFinished(value)) {
      return context.watch<TaskManager>().getTasksFinish();
    } else {
      return context.watch<TaskManager>().tasks;
    }
  }
}
