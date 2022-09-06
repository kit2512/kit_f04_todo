import 'package:demo_state_app/src/data/task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key, required this.task, this.isFinished = false})
      : super(key: key);
  final bool isFinished;
  final Task task;
  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat.yMMMMd('en_US');
    if (isFinished) {
      return SizedBox(
        height: 130,
        child: Card(
          color: task.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, top: 10, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //backgroundColor: backgroundColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "School",
                        style: TextStyle(color: Colors.black),
                      ),
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
                      child: const Text(
                        "Everyday",
                        style: TextStyle(color: Colors.black),
                      ),
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
                Text(
                  task.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: 180,
        child: Card(
          color: task.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 10, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //backgroundColor: backgroundColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "School",
                        style: TextStyle(color: Colors.black),
                      ),
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
                      child: const Text(
                        "Everyday",
                        style: TextStyle(color: Colors.black),
                      ),
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
                Text(
                  task.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined),
                    Text(dateFormat.format(task.date!))
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.av_timer_outlined),
                    Text(task.time.format(context)),
                    const Spacer(),
                    Checkbox(
                      value: task.isFinish,
                      onChanged: (value) => setFinished(task),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  bool setFinished(Task task) {
    return task.isFinish = !task.isFinish;
  }
}
