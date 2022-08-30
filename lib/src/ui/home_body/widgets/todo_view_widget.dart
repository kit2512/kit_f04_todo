import 'package:demo_state_app/src/models/todo.dart';
import 'package:flutter/material.dart';

class TodosView extends StatelessWidget {
  const TodosView({
    Key? key,
    required this.todos,
    required this.onCheckTapped,
  }) : super(key: key);

  final List<Todo> todos;
  final Function(bool?, int) onCheckTapped;

  @override
  Widget build(BuildContext context) {
    return todos.isEmpty
        ? const Center(
            child: Text("No todos"),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(
                  todo.title ?? "Unknown",
                  style: TextStyle(
                    color: ThemeDataWidget.of(context)!.textColor,
                  ),
                ),
                trailing: Checkbox(
                    value: todo.completed,
                    onChanged: (value) => onCheckTapped(value, index)),
              );
            },
          );
  }
}

class ThemeDataWidget extends InheritedWidget {
  const ThemeDataWidget({Key? key, required this.child})
      : super(key: key, child: child);

  final textColor = Colors.amber;

  @override
  final Widget child;

  static ThemeDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeDataWidget>();
  }

  @override
  bool updateShouldNotify(ThemeDataWidget oldWidget) {
    return true;
  }
}
