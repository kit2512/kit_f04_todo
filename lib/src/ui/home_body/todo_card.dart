import 'package:demo_state_app/src/data/task.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key, required this.task, this.isFinished = false})
      : super(key: key);
  final bool isFinished;
  final Task task;
  @override
  Widget build(BuildContext context) {
    if (isFinished) {
      return SizedBox(
        height: 130,
        child: Card(
          color: task.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
                child: Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //backgroundColor: backgroundColor,
                      ),
                      onPressed: () {},
                      child: const Text("School"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //backgroundColor: backgroundColor,
                      ),
                      onPressed: () {},
                      child: const Text("Everyday"),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_note,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  task.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Card();
    }
  }
}
