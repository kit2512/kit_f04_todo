import 'package:demo_state_app/src/data/remote/todo_repository.dart';
import 'package:demo_state_app/src/models/todo.dart';
import 'package:flutter/material.dart';

import 'widgets/todo_view_widget.dart';

class HomeBody extends StatefulWidget {
  final String appTitle;

  const HomeBody({
    Key? key,
    required this.appTitle,
  }) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final todoRepository = TodoRepository();

  List<Todo>? todos;
  bool isLoading = true;

  @override
  void initState() {
    todoRepository.getTodos().then(
          (todos) => setState(
            () {
              this.todos = todos;
              isLoading = false;
            },
          ),
        );
    super.initState();
  }

  void _onCheckTapped(bool? value, int index) {
    final todo = todos![index];
    final newTodo = todo.copyWith(completed: value);
    setState(() {
      todos![index] = newTodo;
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Todo updated")));
  }

  @override
  Widget build(BuildContext context) {
    return isLoading == true
        ? const Center(
            child: CircularProgressIndicator.adaptive(),
          )
        : TodosView(todos: todos ?? [], onCheckTapped: _onCheckTapped);
  }
}
